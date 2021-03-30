import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        title: Text('Create New Complain'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.mobile_off_outlined,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
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
                      'Category 1',
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
                      'Category 2',
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
                      'Category 3',
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
                      'Category 4',
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
                      'Category 5',
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
                      'Category 6',
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
                      'Category 7',
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
                      'Category 8',
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
                      'Category 9',
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
                      'Category 10',
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
                      'Category 11',
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
                      'Category 12',
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
                      'Category 13',
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
                      'Category 14',
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
    );
  }
}
