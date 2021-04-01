import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class VerifyContinue extends StatefulWidget {
  @override
  _VerifyContinueState createState() => _VerifyContinueState();
}

class _VerifyContinueState extends State<VerifyContinue> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 140, 30, 0),
        color: Color.fromRGBO(232, 232, 232, 1),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/otp_success.png"),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                DemoLocalization.of(context).getTranslatedValue('otpVerified'),
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                DemoLocalization.of(context).getTranslatedValue('otpSuccess'),
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: Button(
                      onPress: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      text: DemoLocalization.of(context)
                          .getTranslatedValue('continues'),
                      color: Colors.green[700],
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
