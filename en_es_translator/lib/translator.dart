import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// import "https://libretranslate.com/translate";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('AppBar'),
      ),
      body: MyBody(),
    ),
  ));
}

String translated = "";

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
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
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
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

  TextEditingController languageController = TextEditingController();

// void updateTranslatedText(String translatedText) {
//   setState(() {
//     translated = translatedText;
//   });
// }

  Future<void> makePostRequest(String start, String end, String text) async {
  
    final url =
        Uri.parse('https://rapid-translate-multi-traduction.p.rapidapi.com/t');
    final headers = {
      'Content-Type': 'application/json',
      'X-RapidAPI-Key': '5706177936msh33eae86c36cf33bp1d0e70jsncc4322e830dd',
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
                margin: EdgeInsets.only(top: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (!isEnglish) Text('English') else Text('Spain'),
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
                          if (isEnglish) Text('English') else Text('Spain'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Icon(
                        Icons.mic_rounded,
                        size: 50,
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.watch_later_outlined,
                        size: 50,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                margin: EdgeInsets.only(top: 11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (!isEnglish) Text('English') else Text('Spain'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  inputText = value;
                                  // if (isEnglish) {
                                  makePostRequest("es", "en", inputText);
                                  // }
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
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                margin: EdgeInsets.only(top: 11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          if (isEnglish) Text('English') else Text('Spain'),
                        ],
                      ),
                    ),
                    Container(
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
