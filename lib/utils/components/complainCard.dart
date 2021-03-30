import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/complaint_detail.dart';

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
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ComplaintDetail(),
          ),
        );
      },
      child: Container(
        height: 133,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/complain-card.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        'OPEN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 260, top: 19),
                  child: Column(
                    children: [
                      Container(
                        height: 24,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => ComplaintDetail(),
                            //   ),
                            // );
                          },
                          child: Image.asset(
                            'assets/list2.png',
                            color: Colors.blue[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 70, 10),
              child: Column(
                children: [
                  Text(
                    'Bank staff not helping me out.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0, top: 0),
              child: Column(
                children: [
                  Row(
                    children: [
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
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 17, top: 0),
                            child: Column(
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
                                      'Feb 4, 2021, 4:34 PM',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 170, top: 10),
                        child: Container(
                          height: 24,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => ComplaintDetail(),
                              //   ),
                              // );
                            },
                            child: Image.asset(
                              'assets/mail2.png',
                              color: Colors.blue[300],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
