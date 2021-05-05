import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/verify.dart';
import 'package:sbp_complaints_management/repositry/function_call_method.dart';
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
  FunctionCallRepositry _functionCallRepositry = FunctionCallRepositry();

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
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, bottom: 60),
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
                SizedBox(height: 60),
                Container(
                  child: Form(
                    key: _popUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _firstNameController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('firstName'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 3) {
                              return 'please enter valid name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          keybrdtype: TextInputType.number,
                          controller: _mobileController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('mobileNum'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length != 11) {
                              return 'Invalid contact number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          controller: _emailController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('email'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This is required';
                            }
                            if (!EmailValidator.validate(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          keybrdtype: TextInputType.number,
                          controller: _cnicController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('cnic'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length != 13) {
                              return 'Invalid Cnic number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: DemoLocalization.of(context)
                              .getTranslatedValue('password'),
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
                              child: Button(
                                onPress: () {
                                  if (_popUpFormKey.currentState.validate()) {
                                    _functionCallRepositry
                                        .signUpRepositry()
                                        .then((value) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VerifyScreen()));
                                    });
                                  }
                                },
                                text: DemoLocalization.of(context)
                                    .getTranslatedValue('signup'),
                                color: Color.fromRGBO(11, 175, 89, 1),
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
      ),
    );
  }
}
