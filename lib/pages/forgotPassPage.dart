import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/PassResetCode.dart';
import 'package:sbp_complaints_management/pages/first_home_page.dart';
import 'package:sbp_complaints_management/pages/forgotPassPage.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';
import 'package:email_validator/email_validator.dart';

class ForgotPassPage extends StatefulWidget {
  @override
  _ForgotPassPageState createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  String email, password;
  bool isLoginPressed = false;
  bool _passwordVisible;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;
  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();

  @override
  initState() {
    emailInputController = new TextEditingController();
    passwordInputController = new TextEditingController();
    _passwordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 150),
            color: Color.fromRGBO(0, 115, 50, 1),
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Form(
                key: _popUpFormKey,
                child: Column(
                  children: <Widget>[
                    ImageIcon(
                      AssetImage('assets/email.png'),
                      color: Colors.white,
                      size: 80,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('emailSendCode'),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(
                          controller: emailInputController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('email'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email is required';
                            }
                            if (!EmailValidator.validate(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Button(
                            onPress: () {
                              if (_popUpFormKey.currentState.validate()) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => ResetPassCode(),
                                  ),
                                );
                              }
                            },
                            text: DemoLocalization.of(context)
                                .getTranslatedValue('send'),
                            color: Color.fromRGBO(11, 175, 89, 1),
                          ),
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
