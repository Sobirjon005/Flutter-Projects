// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
          title: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('../assets/images/fon.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 33),
                        child: Text(
                          'Where do you want to travel?',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 11, bottom: 22),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(33)),
                              child: Icon(
                                Icons.casino,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 22, left: 22),
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Select Destination',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.expand_more,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(33)),
                              child: Icon(Icons.search),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),

// ------------------------------------------------------------------------

        body: Container(
          child: Column(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 11, left: 22),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Best Deals',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 3),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'Sorted by lower price',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.expand_more,
                                    color: Colors.black38,
                                    size: 24,
                                    semanticLabel: 'somsa',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // alignment: Alignment.topLeft,
                margin: const EdgeInsets.symmetric(horizontal: 11),
                height: 200,
                // width: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width: 170,
                      // color: Colors.lightBlueAccent,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, left: 11),
                                // alignment: Alignment.topLeft,
                                child: Text(
                                  'EI Cairo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Container(
                                  margin: EdgeInsets.only(top: 9),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 43),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 18,
                                          semanticLabel: 'lag\'mon',
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '4.3',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 11),
                            alignment: Alignment.topLeft,
                            child: Text('Egypt'),
                          ),
                          Container(
                            child: Icon(
                              Icons.filter_hdr_rounded,
                              size: 70,
                              color: Colors.black38,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'More',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '\$260',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 209, 231),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(11),
                      width: 170,
                      // color: Colors.lightBlueAccent,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, left: 11),
                                // alignment: Alignment.topLeft,
                                child: Text(
                                  'EI Cairo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Container(
                                  margin: EdgeInsets.only(top: 9),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 43),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 18,
                                          semanticLabel: 'lag\'mon',
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '4.3',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 11),
                            alignment: Alignment.topLeft,
                            child: Text('Egypt'),
                          ),
                          Container(
                            child: Icon(
                              Icons.filter_hdr_rounded,
                              size: 70,
                              color: Colors.black38,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'More',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '\$260',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 209, 231),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(11),
                      width: 170,
                      // color: Colors.lightBlueAccent,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, left: 11),
                                // alignment: Alignment.topLeft,
                                child: Text(
                                  'EI Cairo',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Container(
                                  margin: EdgeInsets.only(top: 9),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 43),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 18,
                                          semanticLabel: 'lag\'mon',
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '4.3',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 11),
                            alignment: Alignment.topLeft,
                            child: Text('Egypt'),
                          ),
                          Container(
                            child: Icon(
                              Icons.filter_hdr_rounded,
                              size: 70,
                              color: Colors.black38,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'More',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '\$260',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 209, 231),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 22, top: 11),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Popular Destinations',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Sorted by higher rating',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 11),
                      height: 200,
                      // color: Colors.blue,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            // margin: EdgeInsets.all(1),
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 100,
                                  child: Icon(
                                    Icons.filter_hdr_rounded,
                                    color: Colors.black38,
                                    size: 70,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 183, 209, 231),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 11),
                                              child: Text('Cancun'),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 60, top: 11),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 22,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '4.8',
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              // margin: EdgeInsets.only(top: 11),
                                              child: Text(
                                                'Mexico',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 6),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 22,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '848 Reviews',
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  // child: Row(
                                  //   children: [
                                  //     Container(
                                  //       margin: EdgeInsets.only(top: 11),
                                  //       child: Text('Cancun'),
                                  //     ),
                                  //     Container(
                                  //       margin:
                                  //           EdgeInsets.only(left: 60, top: 11),
                                  //       child: Row(
                                  //         children: [
                                  //           Container(
                                  //             child: Icon(
                                  //               Icons.star,
                                  //               color: Colors.orange,
                                  //               size: 22,
                                  //             ),
                                  //           ),
                                  //           Container(
                                  //             child: Text(
                                  //               '4.8',
                                  //               style: TextStyle(
                                  //                 color: Colors.orange,
                                  //                 fontSize: 18,
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}

//
// ---------------------------------------------------------------------

// Container(
//   margin: EdgeInsets.all(11),
//   width: 170,
//   decoration: BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.circular(20)),
//   child: Column(
//     children: [
//       Container(
//         child: Text('df'),
//       ),
//       Container(
//         child: Text('dfa'),
//       )
//     ],
//   ),
// ),

// ---------------------------------------------------------------------
