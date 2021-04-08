import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/verify_continue.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Material(
        child: Container(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 140, 30, 0),
            color: Color.fromRGBO(232, 232, 232, 1),
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/otp_sms.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      DemoLocalization.of(context)
                          .getTranslatedValue('otpsend'),
                      style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text(
                      DemoLocalization.of(context)
                          .getTranslatedValue('otpPhoneNum'),
                      style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                    ),
                  ),
                  SizedBox(height: 55),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 27, 30),
                    child: OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 30,
                      fieldStyle: FieldStyle.underline,
                      style: TextStyle(fontSize: 14),
                      onChanged: (pin) {
                        print("Changed: " + pin);
                      },
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DemoLocalization.of(context)
                                .getTranslatedValue('otpNotsend'),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              DemoLocalization.of(context)
                                  .getTranslatedValue('resendOtp'),
                              style: TextStyle(
                                  fontSize: 14, color: Colors.greenAccent[400]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 50.0),
                              child: Button(
                                onPress: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VerifyContinue()));
                                },
                                text: DemoLocalization.of(context)
                                    .getTranslatedValue('verify'),
                                color: Colors.green[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
