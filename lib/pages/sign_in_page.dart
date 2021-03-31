import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';
import 'package:email_validator/email_validator.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(40, 20, 40, 300),
          color: Color.fromRGBO(0, 115, 50, 1),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Form(
              key: _popUpFormKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo_white.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextField(
                        controller: emailInputController,
                        hintText: 'Email',
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
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: passwordInputController,
                        hintText: '***********',
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          print('forgotPassword');
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(120, 10, 0, 0),
                          child: Text(
                            'forgot password?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Button(
                          onPress: () {
                            if (_popUpFormKey.currentState.validate()) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            }
                          },
                          text: 'Login',
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
    );
  }
}
