import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 25),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.teal),
                flex: 1,
              ),
              Expanded(
                child: Container(color: Colors.red),
                flex: 1,
              ),
              Expanded(
                child: Container(color: Colors.indigoAccent),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}