import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/complain_list.dart';
import 'package:sbp_complaints_management/pages/edit_profile.dart';
import 'package:sbp_complaints_management/pages/first_home_page.dart';
import 'package:sbp_complaints_management/pages/home.dart';
import 'package:sbp_complaints_management/pages/notification_page.dart';
import 'package:sbp_complaints_management/pages/profile_page.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>
// with TickerProviderStateMixin
{
  // TabController tabController;
  int _currentIndex = 0;
  final List<Widget> _tablist = [
    FirstHomePage(),
    ComplainListPage(),
    NotificationPge(),
    ProfilePage(),
    EditProfile(),
    // OpenChat(),
    // PastTripsPage(),
    // PastTripsPage(),
    // PastTripsPage(),
  ];
  // @override
  // void initState() {
  //   super.initState();
  //   tabController =
  //       TabController(initialIndex: 0, length: _tablist.length, vsync: this);
  // }

  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tablist[_currentIndex],

      //  TabBarView(
      //   controller: tabController,
      //   children: _tablist,
      // ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(21, 183, 98, 1),
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap: onTabTapped,

          // (currentIndex) {
          //   setState(() {
          //     _currentIndex = currentIndex;
          //   });
          //   tabController.animateTo(_currentIndex);
          // },
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: ImageIcon(
                AssetImage('assets/Home.png'),
                // color: Colors.white,
              ),
              // ignore: deprecated_member_use
              label: '_____',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: new Badge(
                badgeColor: Colors.yellow,
                position: BadgePosition.topEnd(top: -8, end: -10),
                animationDuration: Duration(milliseconds: 300),
                animationType: BadgeAnimationType.slide,
                badgeContent: Text('27',
                    style: TextStyle(fontSize: 8, color: Colors.black)),
                child: new ImageIcon(
                  AssetImage(
                    'assets/list.png',
                  ),
                  // color: Colors.grey,
                ),
              ),
              // icon: ImageIcon(
              //   AssetImage('assets/list.png'),
              //   // color: Colors.white,
              // ),
              label: '_____',
            ),

            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: new Badge(
                badgeColor: Colors.yellow,
                position: BadgePosition.topEnd(top: -8, end: -10),
                animationDuration: Duration(milliseconds: 300),
                animationType: BadgeAnimationType.slide,
                badgeContent: Text('12',
                    style: TextStyle(fontSize: 8, color: Colors.black)),
                child: new ImageIcon(
                  AssetImage(
                    'assets/mail.png',
                  ),
                  // color: Colors.grey,
                ),
              ),
              // icon: new Stack(
              //   children: <Widget>[
              //     new ImageIcon(
              //       AssetImage('assets/mail.png'),
              //       // color: Colors.white,
              //     ),
              //     new Positioned(
              //       right: 0,
              //       child: new Container(
              //         padding: EdgeInsets.all(1),
              //         decoration: new BoxDecoration(
              //           color: Colors.yellow,
              //           borderRadius: BorderRadius.circular(6),
              //         ),
              //         constraints: BoxConstraints(
              //           minWidth: 13,
              //           minHeight: 13,
              //         ),
              //         child: new Text(
              //           '2',
              //           style: new TextStyle(
              //             color: Colors.black,
              //             fontSize: 8,
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              // icon: ImageIcon(
              //   AssetImage('assets/mail.png'),
              //   // color: Colors.white,
              // ),
              label: '_____',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: ImageIcon(
                AssetImage('assets/Person.png'),
                // color: Colors.white,
              ),
              label: '_____',
            ),
            // BottomNavigationBarItem(
            //   icon: new Icon(Icons.thumb_up),
            //   // ignore: deprecated_member_use
            //   title: new Text("Like"),
            // ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
