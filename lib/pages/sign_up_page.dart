import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/verify.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstNameController;
  TextEditingController _lastNameController;
  TextEditingController _loginIdController;
  TextEditingController _passwordController;
  TextEditingController _reEnterPasswordController;
  TextEditingController _cnicController;
  TextEditingController _mobileController;
  TextEditingController _emailController;
  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _loginIdController = TextEditingController();
    _passwordController = TextEditingController();
    _reEnterPasswordController = TextEditingController();
    _cnicController = TextEditingController();
    _mobileController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 8, bottom: 30),
        color: Color.fromRGBO(0, 115, 50, 1),
        child: Container(
          margin: const EdgeInsets.only(right: 50, left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
              SizedBox(height: 20),
              Container(
                child: Form(
                  key: _popUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _firstNameController,
                        hintText: 'First Name',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _lastNameController,
                        hintText: 'Last Name',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _loginIdController,
                        hintText: 'Login ID',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _reEnterPasswordController,
                        hintText: 'Re Enter Password',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _cnicController,
                        hintText: 'CNIC',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _mobileController,
                        hintText: 'Mobile',
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Button(
                              onPress: () {
                                if (_popUpFormKey.currentState.validate()) {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VerifyScreen()));
                                }
                              },
                              text: 'Signup',
                              color: Colors.green[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
