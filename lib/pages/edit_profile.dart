import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String email, password;
  bool isLoginPressed = false;
  bool _passwordVisible;
  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController emailInputController;
  TextEditingController mobileNumberInputController;
  TextEditingController cnicNumberInputController;

  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();

  @override
  initState() {
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    mobileNumberInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    cnicNumberInputController = new TextEditingController();

    _passwordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        title: Text('Edit Profile'),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(20),
        color: Color.fromRGBO(232, 232, 232, 1),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Form(
            key: _popUpFormKey,
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    CustomTextField(
                      brdrside: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      controller: firstNameInputController,
                      hintText: 'First Name',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'First Nmae is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      brdrside: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      controller: lastNameInputController,
                      hintText: 'Last Name',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Last Nmae is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      brdrside: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      controller: mobileNumberInputController,
                      hintText: 'Mobile',
                      // '03xx-xxxxxxx',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      brdrside: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      controller: emailInputController,
                      hintText: 'Email',
                      // 'abc@xyz.com',
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
                      brdrside: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      controller: cnicNumberInputController,
                      hintText: 'CNIC',
                      // '42202-3900665-1',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Cnic is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Button(
                        onPress: () {
                          // if (_popUpFormKey.currentState.validate()) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                          //  }
                        },
                        text: 'Update',
                        color: Color.fromRGBO(39, 165, 232, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
