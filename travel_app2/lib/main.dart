import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
          backgroundColor: Colors.indigo[900],
          title: Container(
            child: Column(
              children: [
                Container(
                  // alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                'London',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 11),
                              child: Icon(
                                Icons.favorite_rounded,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 26),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'England',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 11, left: 22, top: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            right: 11, left: 11, bottom: 5, top: 5),
                        child: Text(
                          '\$330',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(33)),
                      ),
                      Container(
                        child: Text(
                          'Expires in: 58 h 23 min',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(right: 22, left: 22, bottom: 22),
          // alignment: Alignment.topLeft,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.only(top: 22),
                child: Text(
                  'Included',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Container(
                child: Text(
                  'For more details press on the icons.',
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.flight,
                                size: 33,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text(
                              'Flight',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.hotel,
                                size: 33,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text(
                              'Hotel',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.directions_car,
                                size: 33,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text(
                              'Car',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              padding: EdgeInsets.all(11),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.tour,
                                size: 33,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text(
                              'Tour',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Rating & Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                          ),
                          Container(
                            child: Text(
                              '4.6',
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 22),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'Sorted by recent reviews',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.expand_more_sharp,
                              color: Colors.black38,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        '429 Reviews',
                        style: TextStyle(color: Colors.black38),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15)),
                      height: 190,
                      width: MediaQuery.of(context).size.width * 0.89,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'London is lorem',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'John Doe',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '12/08/18',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            child: Text(
                                'AI bilan hozirda maktabda oʻqiyotgan oʻquvchilar mehnatga yaroqli boʻlgan paytda uning qudrati yanada oshib, koʻproq vazifalarni bajarish qoʻlidan keladi.'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15)),
                      height: 190,
                      width: MediaQuery.of(context).size.width * 0.89,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'London is lorem',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'John Doe',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '12/08/18',
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.topLeft,
                            child: Text(
                                'AI bilan hozirda maktabda oʻqiyotgan oʻquvchilar mehnatga yaroqli boʻlgan paytda uning qudrati yanada oshib, koʻproq vazifalarni bajarish qoʻlidan keladi.'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Text(
                  'Gallery',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Sorted by recent photos',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.expand_more_rounded,
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                      height: 190,
                      child: Icon(
                        Icons.filter_hdr_rounded,
                        size: 70,
                        color: Colors.black38,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                      height: 190,
                      child: Icon(
                        Icons.filter_hdr_rounded,
                        size: 70,
                        color: Colors.black38,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                      height: 190,
                      child: Icon(
                        Icons.filter_hdr_rounded,
                        size: 70,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              )
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
