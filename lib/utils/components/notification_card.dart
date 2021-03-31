import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/complaint_detail.dart';

class NotificationCard extends StatelessWidget {
  final Widget titles;
  final Widget subtitles;
  final Widget tarilings;
  final Color color;
  final ShapeBorder brdrRad;
  final ShapeBorder brdrSide;
  final Padding padding;
  NotificationCard(
      {this.titles,
      this.subtitles,
      this.tarilings,
      this.brdrRad,
      this.color,
      this.brdrSide,
      this.padding});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ComplaintDetail(),
          ),
        );
      },
      child: Container(
        height: 90,
        child: Card(
          shape: brdrRad,
          color: color,
          elevation: 0,
          child: Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 4, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Complaint # 1335',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      '   (OPEN)',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 25, top: 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'February 4, 2021, 4:34 PM',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   padding: EdgeInsets.only(left: 157, top: 0),
                            //   child: IconButton(
                            //     onPressed: () {
                            //       print('message tap');
                            //     },
                            //     icon: Icon(
                            //       Icons.message,
                            //       color: Colors.blue,
                            //       size: 30,
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'You complaint if being  forwarded to the relevant department.',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
