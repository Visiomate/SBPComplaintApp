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
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        title: Text('Complain List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: Column(
              children: [
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
    );
  }
}
