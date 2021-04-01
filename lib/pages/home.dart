import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/utils/components/card.dart';
import 'package:sbp_complaints_management/utils/components/complainCard.dart';
import 'package:sbp_complaints_management/utils/components/const.dart';
import 'package:sbp_complaints_management/utils/components/notification_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(21, 183, 98, 1),
          title: Text(
            DemoLocalization.of(context).getTranslatedValue('newCompl'),
          ),
          actions: <Widget>[
            IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.powerOff),
                iconSize: 20,
                onPressed: () {
                  print("Pressed");
                }),
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
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            child:
                ListView(padding: const EdgeInsets.all(8), children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry1'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry2'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry3'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry4'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry5'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry6'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry7'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry8'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry9'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry10'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry11'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry12'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Color(0xff65c0ef),
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry13'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        color: Colors.blue,
                        brdrRad: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        subtitles: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry14'),
                          style: cardTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ComplainCardWidget(

              // titles: Text('Back staff  Not Helping'),
              // subtitles: Text('Category 4'),

              // Container(
              //   // color: Colors.white,
              //   // margin: EdgeInsets.all(100.0),
              //   height: 500,
              //   width: 70,
              //   alignment: Alignment.topRight,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(25.0),
              //       bottomLeft: Radius.circular(25.0),
              //     ),
              //   ),

              //   child: Align(
              //     // mainAxisAlignment: MainAxisAlignment.end,
              //     alignment: Alignment.topRight,
              //     child: Column(
              //       children: [
              //         Text('hello'),
              //         Text('hello'),
              //       ],
              //     ),
              //     // FlatButton(
              //     //   onPressed: () {},
              //     //   child: Text('hello'),
              //     //   color: Colors.white,
              //     // ),
              //     // FlatButton(
              //     //   onPressed: () {},
              //     //   child: Text('hello'),
              //     //   color: Colors.white,
              //     // )
              //   ),
              // ),
              // ),
              // NotificationCard(
              //   brdrRad: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15.0),
              //       side: BorderSide(color: Colors.grey)),
              //   color: Colors.white,
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
