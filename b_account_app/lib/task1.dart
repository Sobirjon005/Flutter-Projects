import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('../assets/images/Home.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.only(left: 22, top: 22, right: 22),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'ACTIVE BALAMCE',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                '\$43.650.10',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 33),
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                '../assets/images/img-oval.png',
                                width: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 22, bottom: 33),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(22),
                                    child: Image.asset(
                                      '../assets/images/telegram.png',
                                      width: 33,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Send',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(22),
                                    child: Image.asset(
                                      '../assets/images/inbox.png',
                                      width: 33,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Reques',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(22),
                                    child: Image.asset(
                                      '../assets/images/direction.png',
                                      width: 33,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'In & Out',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(22),
                                    child: Image.asset(
                                      '../assets/images/qrcode.png',
                                      width: 33,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'QR Code',
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        color: Colors.white24,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Cards',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            Container(
                              child: Text(
                                'View all',
                                style: TextStyle(color: Colors.white60),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            right: 15, left: 15, top: 22, bottom: 22),
                        margin: EdgeInsets.only(top: 22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 22),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            '../assets/images/cell_icon_black.png',
                                            width: 33,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 11),
                                          // alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                // alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Salary1',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '**** **** **** 2468',
                                                  style: TextStyle(
                                                      color: Colors.white54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '\$4.570.80',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            '../assets/images/cell_icon.png',
                                            width: 33,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 11),
                                          // alignment: Alignment.topLeft,
                                          child: Column(
                                            children: [
                                              Container(
                                                // alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Salary2',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '**** **** **** 2468',
                                                  style: TextStyle(
                                                      color: Colors.white54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '\$4.570.80',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Other',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            Container(
                              child: Text(
                                'View all',
                                style: TextStyle(color: Colors.white54),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            'Expenses',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '01 June 2021 - 16 June 2021',
                                            style: TextStyle(
                                              color: Colors.white54,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '\$4.570.80',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      '../assets/images/Frame_303.png',
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 22, top: 22),
                              height: 1.0,
                              color: Colors.white30,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, top: 5, bottom: 5),
                                    child: Text(
                                      '78% Entertainment',
                                      style: TextStyle(color: Colors.blue[300]),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.white10),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, top: 5, bottom: 5),
                                    child: Text(
                                      '16% Top up',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 231, 94, 255)),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.white10),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 20, left: 20, top: 5, bottom: 5),
                                    child: Text(
                                      '6% Food and Drink',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.white10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // margin: EdgeInsets.only(bottom: 165),
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                        //   padding: EdgeInsets.all(22),
                        //   // alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'Products',
              backgroundColor: Colors.blue, // Tab rangi
              // activeColor: Colors.white, // Aktiv holatdagi ikon va matn rangi
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.support_agent),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
