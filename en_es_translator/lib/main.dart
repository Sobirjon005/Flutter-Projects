import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Center(
          child: Text('Translate'),
        ),
      ),
      body: MyBody(),
      bottomNavigationBar: NavigationBar(),
    ),
  ));
}

String translated = "";

class NavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Private',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _LanguageSwitcherState createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<MyBody> {
  bool isEnglish = true;
  String inputText = '';

  Future<void> makePostRequest(String start, String end, String text) async {
    final url =
        Uri.parse('https://rapid-translate-multi-traduction.p.rapidapi.com/t');
    final headers = {
      'Content-Type': 'application/json',
      'X-RapidAPI-Key': '77a0edb70bmsh6f45679332e3fd6p1340f7jsn1d654178a1d4',
      'X-RapidAPI-Host': 'rapid-translate-multi-traduction.p.rapidapi.com',
    };
    final body = jsonEncode({
      'from': start,
      'to': end,
      'q': text,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      setState(() {
        translated = response.body;
      });
      print('Response body: ${response.body}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (!isEnglish) Text('English') else Text('Spanish'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isEnglish = !isEnglish;
                              });
                            },
                            child: Container(
                              child: Icon(Icons.compare_arrows),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          if (isEnglish) Text('English') else Text('Spanish'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Icon(
                        Icons.mic_rounded,
                        size: 50,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.watch_later_outlined,
                        size: 50,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(98, 148, 240, 228),
                  borderRadius: BorderRadius.circular(11),
                ),
                margin: EdgeInsets.only(top: 11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (!isEnglish) Text('English') else Text('Spanish'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 9, bottom: 33),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  inputText = value;
                                  if (!isEnglish) {
                                    makePostRequest("en", "es", inputText);
                                  } else {
                                    makePostRequest("es", "en", inputText);
                                  }
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your text',
                              ),
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.mic_none)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 229, 230, 240),
                      offset: Offset(1.95, 1.95),
                      blurRadius: 2.6,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (isEnglish) Text('English') else Text('Spanish'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 22, bottom: 22),
                      child: Row(
                        children: [Text(translated)],
                      ),
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.mic_none)),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
