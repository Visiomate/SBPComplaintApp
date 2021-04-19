import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/pages/newPassPage.dart';
import 'package:sbp_complaints_management/pages/verify_continue.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class ResetPassCode extends StatefulWidget {
  @override
  _ResetPassCodeState createState() => _ResetPassCodeState();
}

class _ResetPassCodeState extends State<ResetPassCode> {
  TextEditingController _passwordController;
  TextEditingController _firstNameController;
  TextEditingController _reEnterPasswordController;
  @override
  void initState() {
    super.initState();

    _passwordController = TextEditingController();
    _reEnterPasswordController = TextEditingController();
    _firstNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Material(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 150),
              color: Color.fromRGBO(232, 232, 232, 1),
              child: Container(
                child: Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/email.png'),
                      color: Colors.green[800],
                      size: 80,
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              DemoLocalization.of(context)
                                  .getTranslatedValue('sndCodeEmail'),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('resendOtp'),
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.greenAccent[400]),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          controller: _firstNameController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('enter6digitVCod'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 3) {
                              return 'please enter valid code';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('newPass'),
                          isPassword: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          // onchng: (value) => _passwordController.text = value,
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          isPassword: true,
                          controller: _reEnterPasswordController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('reEnterPass'),
                          // obscureText: true,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }

                            if (_passwordController.text !=
                                _reEnterPasswordController.text) {
                              return 'Confimation password does not match the entered password';
                            }

                            return null;
                          },
                          // onchng: (value) =>
                          //     _reEnterPasswordController.text = value,
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 00.0, right: 0.0),
                                child: Button(
                                  onPress: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  },
                                  text: DemoLocalization.of(context)
                                      .getTranslatedValue('submit'),
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
      ),
    );
  }
}
