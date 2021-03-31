import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/sign_in_page.dart';
import 'package:sbp_complaints_management/pages/sign_up_page.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(232, 232, 232, 1),
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 140, 30, 0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo_green.png"),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Button(
                            onPress: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            text: 'Login',
                            color: Colors.green[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Button(
                      onPress: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                      text: 'Sign Up',
                      color: Color.fromRGBO(11, 175, 89, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
