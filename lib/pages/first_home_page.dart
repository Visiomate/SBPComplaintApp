import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home.dart';

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
            DemoLocalization.of(context).getTranslatedValue('homes'),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: HomeBody(),
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
                        DemoLocalization.of(context)
                            .getTranslatedValue('registerComp'),
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 100,
                        width: 90,
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
                          DemoLocalization.of(context)
                              .getTranslatedValue('complain'),
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
                                    DemoLocalization.of(context)
                                        .getTranslatedValue('totalComplain'),
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
                                              DemoLocalization.of(context)
                                                  .getTranslatedValue('opens'),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              DemoLocalization.of(context)
                                                  .getTranslatedValue(
                                                      'cmplaints'),
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
                                            DemoLocalization.of(context)
                                                .getTranslatedValue('closd'),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            DemoLocalization.of(context)
                                                .getTranslatedValue(
                                                    'cmplaints'),
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
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.red[800],
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
                                    DemoLocalization.of(context)
                                        .getTranslatedValue('rejctdComplnts'),
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
                    DemoLocalization.of(context).getTranslatedValue('feedbcks'),
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
                        height: 100,
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
                                            DemoLocalization.of(context)
                                                .getTranslatedValue('postive'),
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
                                            DemoLocalization.of(context)
                                                .getTranslatedValue('feedbcks'),
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
                        height: 100,
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
                                            DemoLocalization.of(context)
                                                .getTranslatedValue('negatve'),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            DemoLocalization.of(context)
                                                .getTranslatedValue('feedbcks'),
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
            ],
          ),
        ),
      ),
    );
  }
}
