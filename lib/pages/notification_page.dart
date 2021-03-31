import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/notification_card.dart';

class NotificationPge extends StatefulWidget {
  @override
  _NotificationPgeState createState() => _NotificationPgeState();
}

class _NotificationPgeState extends State<NotificationPge> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          backgroundColor: Color.fromRGBO(21, 183, 98, 1),
          title: Text('Notifications'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Container(
                    child: new Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.blue),
                        ),
                        child: SizedBox(
                          height: 40,
                          child: new ListTile(
                            title: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: TextField(
                                decoration: new InputDecoration(
                                    hintText: 'Search Complaint',
                                    border: InputBorder.none),
                                // onChanged: onSearchTextChanged,
                              ),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: new ImageIcon(
                                AssetImage('assets/search.png'),
                                color: Colors.blue[300],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  NotificationCard(
                    brdrRad: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
