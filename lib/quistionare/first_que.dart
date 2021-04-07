import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/quistionare/second_quest.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class FirstQuestion extends StatefulWidget {
  @override
  _FirstQuestionState createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
  bool viewVisible = false;
  bool viewSecondVisible = true;
  int selectedRadioTile;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;
  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    viewVisible = false;
    viewSecondVisible = false;

    selectedRadioTile = 0;
    emailInputController = new TextEditingController();
    passwordInputController = new TextEditingController();
  }

  void showWidget(int val) {
    setState(() {
      viewVisible = true;
      viewSecondVisible = false;
      selectedRadioTile = val;
    });
  }

  void hideWidget(int val) {
    setState(() {
      viewVisible = false;
      viewSecondVisible = true;
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                "1.	Have you approached your bank?",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // SizedBox(height: 24.0),
              // Visibility(
              //     maintainSize: true,
              //     maintainAnimation: true,
              //     maintainState: true,
              //     visible: viewVisible,
              //     child: Container(
              //         height: 200,
              //         width: 200,
              //         color: Colors.green,
              //         margin: EdgeInsets.only(top: 50, bottom: 30),
              //         child: Center(
              //             child: Text('Show Hide Text View Widget in Flutter',
              //                 textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     color: Colors.white, fontSize: 23))))),

              // RaisedButton(
              //   child: Text('Hide Widget on Button Click'),
              //   onPressed: hideWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),

              // RaisedButton(
              //   child: Text('Show Widget on Button Click'),
              //   onPressed: showWidget,
              //   color: Colors.pink,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              // ),

              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text('No'),
                value: 1,
                onChanged: (val) {
                  hideWidget(val);
                },
              ),

              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text('yes'),
                value: 2,
                onChanged: (val) {
                  showWidget(val);
                },
              ),

              new Center(
                child: viewVisible == true
                    ? new Visibility(
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        visible: viewVisible,
                        child: Container(
                          // height: 220,
                          // width: 300,
                          color: Colors.white,
                          margin: EdgeInsets.only(top: 0, bottom: 10),
                          child: Form(
                            key: _popUpFormKey,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          'Provide complain number & complaint Date'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomTextField(
                                        controller: emailInputController,
                                        hintText: DemoLocalization.of(context)
                                            .getTranslatedValue('email'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Email is required';
                                          }
                                          // if (!EmailValidator.validate(value)) {
                                          //   return 'Please enter a valid email';
                                          // }
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
                                      SizedBox(height: 20),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8.0),
                                              child: Button(
                                                onPress: () {
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Home()));
                                                },
                                                text: 'Cancel',
                                                //  DemoLocalization.of(context)
                                                //     .getTranslatedValue('signup'),
                                                color: Color.fromRGBO(
                                                    11, 175, 89, 1),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, right: 8.0),
                                              child: Button(
                                                onPress: () {
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  SecondQuestionPage()));
                                                },
                                                text: 'Next',
                                                //  DemoLocalization.of(context)
                                                //     .getTranslatedValue('signup'),
                                                color: Color.fromRGBO(
                                                    11, 175, 89, 1),
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
                      )
                    : new Visibility(
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        visible: viewSecondVisible,
                        child: Container(
                          // height: 80,
                          // width: 300,
                          color: Colors.white,
                          margin: EdgeInsets.only(top: 10, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(9),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'i.	Please approach your concerned bank at 021-XXX-XXX-XXX or email them at xyz@abc.com. You can also write to them at XYZ bank limited, x floor, x building, x road, Karachi. As per Consumer Grievance Handling Mechanism (CGHM) issued by SBP under BC&CPD Circular No. 1 of 2016, banks are required to resolve complaints of the customers within given timeline, being the first forum of redressal of complaints. Please obtain complaint number and turn around time from the bank for resolution of the matter.',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      // CustomTextField(
                                      //   controller: emailInputController,
                                      //   hintText: DemoLocalization.of(context)
                                      //       .getTranslatedValue('email'),
                                      //   validator: (value) {
                                      //     if (value.isEmpty) {
                                      //       return 'Email is required';
                                      //     }
                                      //     // if (!EmailValidator.validate(value)) {
                                      //     //   return 'Please enter a valid email';
                                      //     // }
                                      //     return null;
                                      //   },
                                      // ),
                                      // SizedBox(height: 10),
                                      // CustomTextField(
                                      //   controller: passwordInputController,
                                      //   hintText: '***********',
                                      //   validator: (value) {
                                      //     if (value.isEmpty) {
                                      //       return 'Password is required';
                                      //     }
                                      //     return null;
                                      //   },
                                      // ),

                                      Container(
                                        child: Button(
                                          onPress: () {
                                            // if (_popUpFormKey.currentState.validate()) {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                builder: (context) => Home(),
                                              ),
                                            );
                                            // }
                                          },
                                          text: ('Back To Dashboard'),
                                          // DemoLocalization.of(context)
                                          //     .getTranslatedValue('login'),
                                          color: Color.fromRGBO(11, 175, 89, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ),

              // Text(
              //   '$radioItem',
              //   style: TextStyle(fontSize: 23),
              // ),

              // Row(
              //   children: [
              //     new Radio(
              //       value: 0,
              //       groupValue: _radioValue,
              //       onChanged: _handleRadioValueChange,
              //     ),
              //     new Text(
              //       'First',
              //       style: new TextStyle(fontSize: 16.0),
              //     ),
              //     Column(
              //       children: [
              //         Row(children: [
              //           new Radio(
              //             value: 1,
              //             groupValue: _radioValue,
              //             onChanged: _handleRadioValueChange,
              //           ),
              //           new Text(
              //             'Second',
              //             style: new TextStyle(
              //               fontSize: 16.0,
              //             ),
              //           ),
              //         ])
              //       ],
              //     )
              //   ],
              // ),
              // Visibility(
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   maintainState: true,
              //   visible: viewSecondVisible,
              //   child: Container(
              //     // height: 80,
              //     // width: 300,
              //     color: Colors.white,
              //     margin: EdgeInsets.only(top: 10, bottom: 0),
              //     child: Container(
              //       padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              //       child: Column(
              //         children: <Widget>[
              //           Container(
              //             padding: EdgeInsets.all(9),
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [

              //                 // Text(
              //                 //   'i.	Please approach your concerned bank at 021-XXX-XXX-XXX or email them at xyz@abc.com. You can also write to them at XYZ bank limited, x floor, x building, x road, Karachi. As per Consumer Grievance Handling Mechanism (CGHM) issued by SBP under BC&CPD Circular No. 1 of 2016, banks are required to resolve complaints of the customers within given timeline, being the first forum of redressal of complaints. Please obtain complaint number and turn around time from the bank for resolution of the matter.',
              //                 //   style: TextStyle(
              //                 //       color: Colors.white, fontSize: 12),
              //                 // ),
              //                 // CustomTextField(
              //                 //   controller: emailInputController,
              //                 //   hintText: DemoLocalization.of(context)
              //                 //       .getTranslatedValue('email'),
              //                 //   validator: (value) {
              //                 //     if (value.isEmpty) {
              //                 //       return 'Email is required';
              //                 //     }
              //                 //     // if (!EmailValidator.validate(value)) {
              //                 //     //   return 'Please enter a valid email';
              //                 //     // }
              //                 //     return null;
              //                 //   },
              //                 // ),
              //                 // SizedBox(height: 10),
              //                 // CustomTextField(
              //                 //   controller: passwordInputController,
              //                 //   hintText: '***********',
              //                 //   validator: (value) {
              //                 //     if (value.isEmpty) {
              //                 //       return 'Password is required';
              //                 //     }
              //                 //     return null;
              //                 //   },
              //                 // ),

              //                 Container(
              //                   child: Button(
              //                     onPress: () {
              //                       // if (_popUpFormKey.currentState.validate()) {
              //                       Navigator.of(context).pushReplacement(
              //                         MaterialPageRoute(
              //                           builder: (context) =>
              //                               FirstQuestionFirstNo(),
              //                         ),
              //                       );
              //                       // }
              //                     },
              //                     text: ('continue'),
              //                     // DemoLocalization.of(context)
              //                     //     .getTranslatedValue('login'),
              //                     color: Color.fromRGBO(11, 175, 89, 1),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10.0),
              // Visibility(
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   maintainState: true,
              //   visible: viewVisible,
              //   child: Container(
              //     // height: 220,
              //     // width: 300,
              //     color: Colors.white,
              //     margin: EdgeInsets.only(top: 0, bottom: 10),
              //     child: Form(
              //       key: _popUpFormKey,
              //       child: Container(
              //         padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              //         child: Column(
              //           children: <Widget>[
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 CustomTextField(
              //                   controller: emailInputController,
              //                   hintText: DemoLocalization.of(context)
              //                       .getTranslatedValue('email'),
              //                   validator: (value) {
              //                     if (value.isEmpty) {
              //                       return 'Email is required';
              //                     }
              //                     // if (!EmailValidator.validate(value)) {
              //                     //   return 'Please enter a valid email';
              //                     // }
              //                     return null;
              //                   },
              //                 ),
              //                 SizedBox(height: 10),
              //                 CustomTextField(
              //                   controller: passwordInputController,
              //                   hintText: '***********',
              //                   validator: (value) {
              //                     if (value.isEmpty) {
              //                       return 'Password is required';
              //                     }
              //                     return null;
              //                   },
              //                 ),
              //                 SizedBox(height: 20),
              //                 Container(
              //                   child: Button(
              //                     onPress: () {
              //                       // if (_popUpFormKey.currentState.validate()) {
              //                       Navigator.of(context).pushReplacement(
              //                         MaterialPageRoute(
              //                           builder: (context) => SecondQuestPage(),
              //                         ),
              //                       );
              //                       // }
              //                     },
              //                     text: 'Continue',
              //                     // DemoLocalization.of(context)
              //                     //     .getTranslatedValue('login'),
              //                     color: Color.fromRGBO(11, 175, 89, 1),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  // Expanded(
                  //   flex: 1,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  //     child: Button(
                  //       onPress: () {
                  //         Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //             builder: (context) => FirstQuestionFirstNo()));
                  //       },
                  //       text: 'No',
                  //       //  DemoLocalization.of(context)
                  //       //     .getTranslatedValue('signup'),
                  //       color: Color.fromRGBO(11, 175, 89, 1),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(width: 40),
                  // Expanded(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(left: 8.0, right: 28.0),
                  //     child: Button(
                  //       onPress: () {
                  //         Navigator.pop(context);
                  //         showDialog(
                  //             context: context,
                  //             builder: (context) {
                  //               return FirstQuestionYesPage();
                  //             });
                  //       },
                  //       text: 'Yes',
                  //       //  DemoLocalization.of(context)
                  //       //     .getTranslatedValue('signup'),
                  //       color: Color.fromRGBO(11, 175, 89, 1),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              // new Container(
              //   width: 200,
              //   child: AbsorbPointer(
              //     absorbing: viewVisible,
              //     child: new TextFormField(
              //       enabled: viewVisible,
              //       style: TextStyle(color: Colors.black87),
              //       textInputAction: TextInputAction.done,
              //       keyboardType: TextInputType.phone,
              //       decoration: InputDecoration(
              //         labelText: 'Start Page',
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
