import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 132,
          title: Text(
            'Where do you want to travel',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 4, 69, 122),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 22),
          child: Row(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Best Deals',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22),
                        child: Text(
                          'Sorted by lower price',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.black38,
                          size: 24,
                          semanticLabel: 'somsa',
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(11),
                        width: 333,
                        height: 333,
                        color: Color.fromARGB(255, 134, 150, 163),
                        // child: Text('df'),
                      ),
                      Container(
                        width: 333,
                        height: 333,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       child: Text('df'),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
