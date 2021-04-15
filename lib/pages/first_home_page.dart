import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbp_complaints_management/pages/home.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';

class FirstHomePage extends StatefulWidget {
  @override
  _FirstHomePageState createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        automaticallyImplyLeading: false,
        // iconTheme: IconThemeData(color: Colors.grey),
        title: Center(
          child: Text(
            'HOME',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: <Widget>[
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
          // Badge(
          //   position: BadgePosition.topEnd(top: 8, end: 32),
          //   animationDuration: Duration(milliseconds: 300),
          //   animationType: BadgeAnimationType.slide,
          //   badgeContent:
          //       Text('27', style: TextStyle(fontSize: 8, color: Colors.white)),
          //   child: IconButton(
          //       icon: new ImageIcon(
          //         AssetImage(
          //           'assets/mail.png',
          //         ),
          //         color: Colors.grey,
          //       ),
          //       onPressed: () {}),
          // ),

          // Padding(
          //   padding: EdgeInsets.only(right: 10.0),
          //   child: GestureDetector(
          //     onTap: () {
          //       print('logout press');
          //     },
          //     child: FaIcon(FontAwesomeIcons.powerOff),
          //     // ImageIcon(
          //     //   AssetImage('assets/dsa.png'),
          //     //   size: 20,
          //     //   color: Colors.white,
          //     // ),
          //   ),
          // ),
        ],
      ),
      body: HomeBody(),
      // drawer: Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Drawer Header'),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => RegisterComplain(),
                    //   ),
                    // );
                  },
                  child: Column(
                    children: [
                      Text(
                        'Create Complaint',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/comp3.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Complaints',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 95,
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(25, 127, 183, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            '9',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 5),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'TOTAL COMPLAINTS',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: FaIcon(FontAwesomeIcons.boxes),
                              color: Colors.white,
                              iconSize: 20,
                              onPressed: () {
                                print("Pressed");
                              }),
                        ),
                        // ImageIcon(
                        //   AssetImage('assets/c1.png'),
                        //   // color: Colors.white,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                        height: 95,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 172, 66, 1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'OPEN',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'COMPLAINTS',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    child: IconButton(
                                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                        icon:
                                            FaIcon(FontAwesomeIcons.userCheck),
                                        color: Colors.white,
                                        iconSize: 20,
                                        onPressed: () {
                                          print("Pressed");
                                        }),
                                    // decoration: BoxDecoration(
                                    //   image: DecorationImage(
                                    //       image: AssetImage("assets/c2.png"),
                                    //       fit: BoxFit.fill),
                                    //   // borderRadius: BorderRadius.only(
                                    //   //   topRight: Radius.circular(15),
                                    //   //   topLeft: Radius.circular(15),
                                    //   // ),
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(86, 191, 109, 1),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '9',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'CLOSED',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'COMPLAINTS',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      icon:
                                          FaIcon(FontAwesomeIcons.checkCircle),
                                      color: Colors.white,
                                      iconSize: 20,
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  // decoration: BoxDecoration(
                                  //   image: DecorationImage(
                                  //       image: AssetImage("assets/c3.png"),
                                  //       fit: BoxFit.fill),
                                  //   borderRadius: BorderRadius.only(
                                  //     topRight: Radius.circular(15),
                                  //     topLeft: Radius.circular(15),
                                  //   ),
                                  // ),
                                ),
                                // ImageIcon(
                                //   AssetImage('assets/c3.png'),
                                //   color: Colors.white,
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 95,
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(106, 166, 220, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            '2',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 5),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'REJECTED COMPLAINTS',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                              icon: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              color: Colors.white,
                              iconSize: 20,
                              onPressed: () {
                                print("Pressed");
                              }),
                        ),
                        // ImageIcon(
                        //   AssetImage('assets/c1.png'),
                        //   // color: Colors.white,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Feedbacks',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '9',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromRGBO(86, 191, 109, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'POSITIVE',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 191, 109, 1),
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'FEEDBACKS',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 191, 109, 1),
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  color: Color.fromRGBO(86, 191, 109, 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 95,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromRGBO(238, 60, 60, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'NEGATIVE',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'FEEDBACKS',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.thumb_down,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10),
              // Container(
              //   padding: const EdgeInsets.only(bottom: 4),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         flex: 1,
              //         child: Container(
              //           height: 95,
              //           padding: EdgeInsets.all(7),
              //           decoration: BoxDecoration(
              //               color: Colors.grey[100],
              //               borderRadius: BorderRadius.only(
              //                 bottomRight: Radius.circular(5),
              //                 bottomLeft: Radius.circular(5),
              //                 topRight: Radius.circular(5),
              //                 topLeft: Radius.circular(5),
              //               ),
              //               border: Border.all(color: Colors.grey)),
              //           child: Column(
              //             children: [
              //               Center(
              //                 child: Padding(
              //                   padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              //                   child: Row(
              //                     children: [
              //                       Text(
              //                         '0',
              //                         style: TextStyle(
              //                           fontSize: 18,
              //                           fontWeight: FontWeight.w800,
              //                           color: Color.fromRGBO(240, 172, 66, 1),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(height: 10),
              //               // Row(
              //               //   children: [
              //               //     Expanded(
              //               //       flex: 1,
              //               //       child: Column(
              //               //         children: [
              //               //           Row(
              //               //             children: [
              //               //               Text(
              //               //                 'PENDING',
              //               //                 style: TextStyle(
              //               //                     color: Color.fromRGBO(
              //               //                         240, 172, 66, 1),
              //               //                     fontSize: 10),
              //               //               ),
              //               //             ],
              //               //           ),
              //               //           Row(
              //               //             children: [
              //               //               Text(
              //               //                 'FEEDBACKS',
              //               //                 style: TextStyle(
              //               //                     color: Color.fromRGBO(
              //               //                         240, 172, 66, 1),
              //               //                     fontSize: 10),
              //               //               ),
              //               //             ],
              //               //           ),
              //               //         ],
              //               //       ),
              //               //     ),
              //               //     Icon(
              //               //       Icons.timelapse,
              //               //       color: Color.fromRGBO(240, 172, 66, 1),
              //               //     ),
              //               //   ],
              //               // ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 10),
              //       Expanded(
              //         flex: 1,
              //         child: Container(
              //           height: 95,
              //           padding: EdgeInsets.all(7),
              //           decoration: BoxDecoration(
              //               color: Colors.grey[100],
              //               borderRadius: BorderRadius.only(
              //                 bottomRight: Radius.circular(5),
              //                 bottomLeft: Radius.circular(5),
              //                 topRight: Radius.circular(5),
              //                 topLeft: Radius.circular(5),
              //               ),
              //               border: Border.all(color: Colors.grey)),
              //           child: Column(
              //             children: [
              //               Center(
              //                 child: Padding(
              //                   padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              //                   child: Row(
              //                     children: [
              //                       Text(
              //                         '42',
              //                         style: TextStyle(
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.w800,
              //                             color: Colors.red),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               SizedBox(height: 10),
              //               Row(
              //                 children: [
              //                   Expanded(
              //                     flex: 1,
              //                     child: Column(
              //                       children: [
              //                         Row(
              //                           children: [
              //                             Text(
              //                               'DROPPED',
              //                               style: TextStyle(
              //                                   color: Colors.red,
              //                                   fontSize: 10),
              //                             ),
              //                           ],
              //                         ),
              //                         Row(
              //                           children: [
              //                             Text(
              //                               'COMPLAINTS',
              //                               style: TextStyle(
              //                                   color: Colors.red,
              //                                   fontSize: 10),
              //                             ),
              //                           ],
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   Icon(
              //                     Icons.delete,
              //                     color: Colors.red,
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
