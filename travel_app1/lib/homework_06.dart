// import 'dart:math';
import 'package:flutter/material.dart';

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
                image: AssetImage(
                  'assets/images/fon.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          // centerTitle: true,
        ),

// ------------------------------------------------------------------------

        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
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
                                        margin: EdgeInsets.only(left: 35),
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
                                  'London',
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
                                        margin: EdgeInsets.only(left: 35),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 18,
                                          semanticLabel: 'lag\'mon',
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '4.6',
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
                            child: Text('England'),
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
                                    '\$330',
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
                                        margin: EdgeInsets.only(left: 35),
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
                      height: 230,
                      // color: Colors.blue,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            child: Column(
                              children: [
                                Container(
                                  width: 175,
                                  height: 180,
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
                                              // margin: EdgeInsets.only(top: 11),
                                              child: Text('Cancun'),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 74,
                                              ),
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
                                                    margin:
                                                        EdgeInsets.only(top: 3),
                                                    child: Text(
                                                      '4.8',
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 14,
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
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black45),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 36),
                                              child: Text(
                                                '848 Reviews',
                                                style: TextStyle(
                                                  color: Colors.black45,
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
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            child: Column(
                              children: [
                                Container(
                                  width: 175,
                                  height: 180,
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
                                  margin: EdgeInsets.only(left: 15, right: 15),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('Santorini'),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 67,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 3),
                                                    child: Text(
                                                      '4.7',
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 14,
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
                                        // margin: EdgeInsets.only(left: 33),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Greece',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black45),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 42),
                                              child: Text(
                                                '663 Reviews',
                                                style: TextStyle(
                                                  color: Colors.black45,
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
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            child: Column(
                              children: [
                                Container(
                                  width: 175,
                                  height: 180,
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
                                              // margin: EdgeInsets.only(top: 11),
                                              child: Text('Denver'),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 80,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        EdgeInsets.only(top: 3),
                                                    child: Text(
                                                      '4.7',
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 14,
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
                                                'America',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black45),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 30),
                                              child: Text(
                                                '573 Reviews',
                                                style: TextStyle(
                                                  color: Colors.black45,
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
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              // backgroundColor: Colors.blue,
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: Colors.black38,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black38,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black38,
              ),
              label: '',
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



// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // List list = ['tom', 'jon'];
// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: Scaffold(
// //         body: ListView(
// //           children: toplam(list),
// //         ),
// //       ),
// //     ),
// //   );
// // }

// // List<Widget> toplam(List x) {
// //   List<Widget> myWidget = [];
// //   for (var i = 0; i < x.length; i++) {
// //     myWidget.add(
// //       Text(x[i]),
// //     );
// //   }
// //   return myWidget;
// // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(
// //     MaterialApp(
// //       home: Scaffold(
// //         body: ListView(
// //           children: [
// //             DataTable(
// //               columns: [
// //                 DataColumn(
// //                   label: Text('№'),
// //                 ),
// //                 DataColumn(
// //                   label: Text('Name'),
// //                 ),
// //                 DataColumn(
// //                   label: Text('Age'),
// //                 ),
// //               ],
// //               rows: [
// //                 DataRow(
// //                   cells: [
// //                     DataCell(
// //                       Text('1'),
// //                     ),
// //                     DataCell(
// //                       Text('Sardor'),
// //                     ),
// //                     DataCell(
// //                       Text('21'),
// //                     ),
// //                   ],
// //                 ),
// //                 DataRow(
// //                   cells: [
// //                     DataCell(
// //                       Text('2'),
// //                     ),
// //                     DataCell(
// //                       Text('Sobirjon'),
// //                     ),
// //                     DataCell(
// //                       Text('19'),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     ),
// //   );
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Table Example'),
//       ),
//       body: MyTable(),
//     ),
//   ));
// }

// class MyTable extends StatelessWidget {
//   final List<List<String>> tableData = [
//     ['1', 'John', '25', '1999'],
//     ['2', 'Emma', '30', '1994'],
//     // Add more rows here if needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: tableData.length + 1,
//       itemBuilder: (BuildContext context, int rowIndex) {
//         if (rowIndex == 0) {
//           // Header row
//           return GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4,
//               mainAxisSpacing: 1.0,
//               crossAxisSpacing: 1.0,
//             ),
//             itemBuilder: (BuildContext context, int columnIndex) {
//               return Container(
//                 color: Colors.grey[300],
//                 padding: EdgeInsets.all(8),
//                 alignment: Alignment.center,
//                 child: Text(
//                   getColumnName(columnIndex),
//                   style: TextStyle(fontSize: 16),
//                 ),
//               );
//             },
//           );
//         } else {
//           // Data rows
//           return GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4,
//               mainAxisSpacing: 1.0,
//               crossAxisSpacing: 1.0,
//             ),
//             itemBuilder: (BuildContext context, int columnIndex) {
//               return Container(
//                 color: rowIndex % 2 == 0 ? Colors.white : Colors.grey[100],
//                 padding: EdgeInsets.all(8),
//                 alignment: Alignment.center,
//                 child: Text(
//                   tableData[rowIndex - 1][columnIndex],
//                   style: TextStyle(fontSize: 16),
//                 ),
//               );
//             },
//           );
//         }
//       },
//     );
//   }

//   String getColumnName(int index) {
//     switch (index) {
//       case 0:
//         return 'ID';
//       case 1:
//         return 'Name';
//       case 2:
//         return 'Age';
//       case 3:
//         return 'Birth Year';
//       default:
//         return '';
//     }
//   }
// }
