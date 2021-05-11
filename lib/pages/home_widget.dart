import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/complain_list.dart';
import 'package:sbp_complaints_management/pages/edit_profile/edit_profile.dart';
import 'package:sbp_complaints_management/pages/first_home_page.dart';
import 'package:sbp_complaints_management/pages/home.dart';
import 'package:sbp_complaints_management/pages/notification_page.dart';
import 'package:sbp_complaints_management/pages/edit_profile/profile_page.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tablist[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(21, 183, 98, 1),
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
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
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
