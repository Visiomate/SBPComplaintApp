import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/login_page.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class TermsAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Terms(),
    );
  }
}

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 60, 20, 0),
              child: Column(
                children: [
                  Text(
                    'Must Read and Agree before Register Guidance for Registering a Complaint',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '1.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text:
                                'I have approached the respective Bank for the redressal of my grievance / complaint, lodged a complaint formally and have',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Complaint Number issued',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        TextSpan(
                            text: ' from the bank.',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '2.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: '7 working days',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        TextSpan(
                          text:
                              ' have been passed since lodging my complaint and I have not received any feedback from the Bank.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '3.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: 'My complaint is',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                          text: ' not related',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        TextSpan(
                          text:
                              ' to the services offered by the Bank and not pertaining to the matters of individual services or Job related (HR Issues) of Bank.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '4.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text:
                                'Subject Complaint has not been escalated to any other forum and not in process / pending in any court of Law, Banking Mohtasib Pakistan or Law enforcement agencies i.e. NAB, FIA etc.',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '5.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text:
                                'I will provide all the information based on the facts and undertake that it will be true and to the best of my knowledge.',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 12, 5),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: '6.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: 'Click the Agree Button for Registration.',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  )
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
                            builder: (context) => LoginScreen()));
                      },
                      text: 'Continue',
                      //  DemoLocalization.of(context)
                      //     .getTranslatedValue('signup'),
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
