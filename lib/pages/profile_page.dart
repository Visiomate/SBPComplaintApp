import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/edit_profile.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {},
        ),
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        title: Text('Profile'),
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.only(right: 10.0),
        //     child: GestureDetector(
        //       onTap: () {},
        //       child: Icon(
        //         Icons.file_present,
        //         size: 26.0,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: ProfileBody(),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 120,
                width: 400,
                color: Color.fromRGBO(25, 127, 183, 1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(90.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Muhammad Abdullah',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              children: [
                                // ImageIcon(
                                //   AssetImage('assets/calendar.png'),
                                //   color: Colors.white,
                                //   size: 14,
                                // ),
                                Text(
                                  'Join on February 4, 2021',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone_android_outlined,
                                size: 10,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '0900-7860119',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.card_membership,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '42202-3900665-1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Button(
                          onPress: () {
                            // Navigator.of(context).pushReplacement(
                            //     MaterialPageRoute(
                            //         builder: (context) => Home()));
                          },
                          text: 'Reset Password',
                          color: Color.fromRGBO(39, 165, 232, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Button(
                          onPress: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          text: 'Edit Profile',
                          color: Color.fromRGBO(39, 165, 232, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
