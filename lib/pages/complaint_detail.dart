import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/utils/components/complain_detail_card.dart';

class ComplaintDetail extends StatefulWidget {
  @override
  _ComplaintDetailState createState() => _ComplaintDetailState();
}

class _ComplaintDetailState extends State<ComplaintDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        leading: IconButton(
          icon: Icon(Icons.chevron_left_sharp),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Complaint Detail'),
      ),
      body: Complaint(),
    );
  }
}

class Complaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            height: 70,
            width: 400,
            color: Colors.blue[300],
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 17.0, 10.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        'Complaint # 1335',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(33.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage('assets/calendar.png'),
                                  color: Colors.white,
                                  size: 14,
                                ),
                                Text(
                                  'Feb 4, 2021, 4:34 PM',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(74, 0, 0, 0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'OPEN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            height: 350,
            width: 400,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 150.0, 0.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Bank Name:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' UBL',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Bank City:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' Lahore',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Branch Name:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' Township',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 55.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        'Bank staff not helping me out.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 12.0, 10.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, dicant vocent nominati per no. Aperiri signiferumque eum ea, te sit ornatus legendos assentior, ut has cetero verterem. Mentitum prodesset vix eu. Ne tollit admodum duo, mea ad tamquam graecis constituam, id qui iudicabit evertitur. Dico scaevola te quo, et qui quas incorrupte interpretaris.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 50.0, 140.0, 0.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Attachments:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'None',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
