import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo.png', // O'zingizning rasm manzilingizni kiritng
                width: 30,
                height: 30,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Text 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Text 2',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.blue, // AppBarning foni
        ),
      ),
    );
  }
}