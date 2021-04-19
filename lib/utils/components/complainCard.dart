import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/complaint_detail.dart';
import 'package:sbp_complaints_management/pages/notification_page.dart';

class ComplainCardWidget extends StatelessWidget {
  final Widget titles;
  final Widget subtitles;
  final Widget tarilings;
  final Color color;
  final ShapeBorder brdrRad;
  final ShapeBorder brdrSide;
  final Padding padding;
  ComplainCardWidget(
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
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => ComplaintDetail(),
        //   ),
        // );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 133,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/complain-card.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              // padding: EdgeInsets.only(left: 15, bottom: 15),
              child: Column(
                children: [
                  Text(
                    'OPEN',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 3),
              alignment: AlignmentDirectional.topEnd,
              child: Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ComplaintDetail(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/list2.png',
                        color: Colors.blue[300],
                        height: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                children: [
                  Text(
                    'Bank staff not helping me out.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/complaint.png'),
                      size: 10,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Complaint # 1335',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(144, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotificationPge(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/mail2.png',
                          color: Colors.blue[300],
                          height: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Text('jdjjd'),
                //   ],
                // ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('timeComplan'),
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
