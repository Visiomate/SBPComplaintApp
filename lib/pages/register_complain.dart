import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/edit_profile.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class RegisterComplain extends StatefulWidget {
  @override
  _RegisterComplainState createState() => _RegisterComplainState();
}

class _RegisterComplainState extends State<RegisterComplain> {
  String email, password;
  bool isLoginPressed = false;
  bool viewVisible = false;
  bool viewSecondVisible = true;
  int selectedRadioTile;

  bool viewAnVisible = true;

  bool rockviewVisible = false;
  bool rockviewSecondVisible = true;
  int rockselectedRadioTile;

  bool viewAnVisibleme = false;
  bool _passwordVisible;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;
  TextEditingController _firstNameController;
  TextEditingController _emailController;
  TextEditingController _mobileController;
  TextEditingController _cnicController;
  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _popUpShortFormKey = GlobalKey<FormState>();

  @override
  initState() {
    _firstNameController = TextEditingController();
    emailInputController = new TextEditingController();
    passwordInputController = new TextEditingController();
    _emailController = TextEditingController();
    _mobileController = TextEditingController();
    _cnicController = TextEditingController();
    _passwordVisible = true;
    viewVisible = false;
    viewSecondVisible = false;
    selectedRadioTile = 0;
    rockviewVisible = false;
    rockviewSecondVisible = false;
    rockselectedRadioTile = 0;
    super.initState();
  }

  void ashowWidget() {
    setState(() {
      viewAnVisibleme = true;
    });
  }

  void ahideWidget() {
    setState(() {
      viewAnVisibleme = false;
    });
  }

  // void showNewWidget() {
  //   setState(() {
  //     viewAnVisible = true;
  //   });
  // }

  // void hideNewWidget() {
  //   setState(() {
  //     viewAnVisible = false;
  //   });
  // }

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

  void rockshowWidget(int val) {
    setState(() {
      rockviewVisible = true;
      rockviewSecondVisible = false;
      rockselectedRadioTile = val;
    });
  }

  void rockhideWidget(int val) {
    setState(() {
      rockviewVisible = false;
      rockviewSecondVisible = true;
      rockselectedRadioTile = val;
    });
  }

  var _countryName;
  var _cityTehsilName;
  var _provincelName;
  var _complainCategory;
  var _subcomplainCategory;

  var _bankNameSelected;
  var _bankNameCity;
  var _branchName;
  var _complainAgainst;
  var _possiblesubcomplainCategory = [
    'Atm blocked',
    'Misbehave BM',
    'Account Opening RO',
    'Credit Card snached',
  ];
  var _possiblecomplainCategory = [
    'Atm',
    'Misbehave',
    'Account Opening',
    'Credit Card',
  ];
  var _possiblecomplainAgainst = [
    'Bank',
    'MFB',
    'DFI',
  ];

  var _possibleProvincelName = [
    'punjab',
    'Sindh',
    'Balochistan',
  ];
  var _possibleCityTehsilName = [
    'Rai',
    'Kasur',
    'Lhr',
  ];
  var _possibleCountyrName = [
    'pk',
    'ind',
    'UAE',
  ];
  var _possibleBankCity = [
    'lhr',
    'islmbd',
    'karachi',
    'peshawar',
    'pindi',
  ];
  var _possibleBankName = [
    'Fysal',
    'HBL',
    'Ubl',
    'ASKARI',
    'standard',
  ];
  var _bankbranchName = [
    'township',
    'fysal town',
    'johar town',
  ];

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
        title: Text(
          DemoLocalization.of(context).getTranslatedValue('registerComp'),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 12, 10, 10),
            child: Column(
              children: [
                _bigForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _showOtherForm() {
  //   return Container(
  //     child: Container(
  //       padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min, // To make the card compact
  //         children: <Widget>[
  //           Text(
  //             "1.	Have you approached your bank?",
  //             style: TextStyle(
  //               fontSize: 22.0,
  //               fontWeight: FontWeight.w700,
  //             ),
  //           ),
  //           RadioListTile(
  //             groupValue: selectedRadioTile,
  //             title: Text('No'),
  //             value: 1,
  //             onChanged: (val) {
  //               hideWidget(val);
  //             },
  //           ),
  //           RadioListTile(
  //             groupValue: selectedRadioTile,
  //             title: Text('yes'),
  //             value: 2,
  //             onChanged: (val) {
  //               showWidget(val);
  //             },
  //           ),
  //           new Center(
  //             child: viewVisible == true
  //                 ? new Visibility(
  //                     maintainSize: true,
  //                     maintainAnimation: true,
  //                     maintainState: true,
  //                     visible: viewVisible,
  //                     child: Container(
  //                       // height: 220,
  //                       // width: 300,
  //                       color: Colors.white,
  //                       margin: EdgeInsets.only(top: 0, bottom: 10),
  //                       child: Form(
  //                         key: _popUpShortFormKey,
  //                         child: Container(
  //                           padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  //                           child: Column(
  //                             children: <Widget>[
  //                               Column(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: [
  //                                   Text(
  //                                       'Provide complain number & complaint Date'),
  //                                   SizedBox(height: 10),
  //                                   CustomTextField(
  //                                     controller: emailInputController,
  //                                     hintText: 'Complaint No',
  //                                     validator: (value) {
  //                                       if (value.isEmpty) {
  //                                         return 'Complaint No is required';
  //                                       }
  //                                       return null;
  //                                     },
  //                                   ),
  //                                   SizedBox(height: 10),
  //                                   CustomTextField(
  //                                     controller: passwordInputController,
  //                                     hintText: 'Date Of Complaint',
  //                                     validator: (value) {
  //                                       if (value.isEmpty) {
  //                                         return 'Date is required';
  //                                       }
  //                                       return null;
  //                                     },
  //                                   ),
  //                                   SizedBox(height: 20),
  //                                   Row(
  //                                     children: [
  //                                       Expanded(
  //                                         flex: 1,
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.only(
  //                                               left: 8.0, right: 8.0),
  //                                           child: Button(
  //                                             onPress: () {
  //                                               Navigator.of(context)
  //                                                   .pushReplacement(
  //                                                       MaterialPageRoute(
  //                                                           builder:
  //                                                               (context) =>
  //                                                                   Home()));
  //                                             },
  //                                             text: 'Close',
  //                                             //  DemoLocalization.of(context)
  //                                             //     .getTranslatedValue('signup'),
  //                                             color: Color.fromRGBO(
  //                                                 11, 175, 89, 1),
  //                                           ),
  //                                         ),
  //                                       ),
  //                                       Expanded(
  //                                         flex: 1,
  //                                         child: Padding(
  //                                           padding: const EdgeInsets.only(
  //                                               left: 8.0, right: 8.0),
  //                                           child: Button(
  //                                             onPress: () {
  //                                               // Navigator.of(context)
  //                                               //     .pushReplacement(
  //                                               //         MaterialPageRoute(
  //                                               //             builder: (context) =>
  //                                               //                 SecondQuestionPage()));
  //                                               ashowWidget();
  //                                             },
  //                                             text: 'Continue',
  //                                             //  DemoLocalization.of(context)
  //                                             //     .getTranslatedValue('signup'),
  //                                             color: Color.fromRGBO(
  //                                                 11, 175, 89, 1),
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ],
  //                                   ),
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   )
  //                 : new Visibility(
  //                     maintainSize: true,
  //                     maintainAnimation: true,
  //                     maintainState: true,
  //                     visible: viewSecondVisible,
  //                     child: Container(
  //                       // height: 80,
  //                       // width: 300,
  //                       color: Colors.white,
  //                       margin: EdgeInsets.only(top: 10, bottom: 0),
  //                       child: Container(
  //                         padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
  //                         child: Column(
  //                           children: <Widget>[
  //                             Container(
  //                               padding: EdgeInsets.all(9),
  //                               child: Column(
  //                                 mainAxisAlignment: MainAxisAlignment.center,
  //                                 children: [
  //                                   Text(
  //                                     'i.	Please approach your concerned bank at 021-XXX-XXX-XXX or email them at xyz@abc.com. You can also write to them at XYZ bank limited, x floor, x building, x road, Karachi. As per Consumer Grievance Handling Mechanism (CGHM) issued by SBP under BC&CPD Circular No. 1 of 2016, banks are required to resolve complaints of the customers within given timeline, being the first forum of redressal of complaints. Please obtain complaint number and turn around time from the bank for resolution of the matter.',
  //                                     style: TextStyle(
  //                                         color: Colors.black, fontSize: 12),
  //                                   ),
  //                                   Container(
  //                                     child: Button(
  //                                       onPress: () {
  //                                         // if (_popUpFormKey.currentState.validate()) {

  //                                         // }
  //                                       },
  //                                       text: ('close'),
  //                                       // DemoLocalization.of(context)
  //                                       //     .getTranslatedValue('login'),
  //                                       color: Color.fromRGBO(11, 175, 89, 1),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _secondWid() {
  //   return Column(
  //     children: <Widget>[
  //       Visibility(
  //         maintainSize: true,
  //         maintainAnimation: true,
  //         maintainState: true,
  //         visible: viewAnVisibleme,
  //         child: Container(
  //           child: Container(
  //             padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min, // To make the card compact
  //               children: <Widget>[
  //                 Text(
  //                   "2.  Is you complaint is pending with Banking Mohtasib or any Law enforcement agency i.e. FIA/NAB etc ?",
  //                   style: TextStyle(
  //                     fontSize: 22.0,
  //                     fontWeight: FontWeight.w700,
  //                   ),
  //                 ),
  //                 RadioListTile(
  //                   groupValue: rockselectedRadioTile,
  //                   title: Text('No'),
  //                   value: 1,
  //                   onChanged: (val) {
  //                     rockhideWidget(val);
  //                   },
  //                 ),
  //                 RadioListTile(
  //                   groupValue: rockselectedRadioTile,
  //                   title: Text('yes'),
  //                   value: 2,
  //                   onChanged: (val) {
  //                     rockshowWidget(val);
  //                   },
  //                 ),
  //                 new Center(
  //                   child: rockviewVisible == true
  //                       ? _bigForm()
  //                       : new Visibility(
  //                           maintainSize: true,
  //                           maintainAnimation: true,
  //                           maintainState: true,
  //                           visible: viewSecondVisible,
  //                           child: Container(
  //                             // height: 80,
  //                             // width: 300,
  //                             color: Colors.white,
  //                             margin: EdgeInsets.only(top: 10, bottom: 0),
  //                             child: Container(
  //                               padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
  //                               child: Column(
  //                                 children: <Widget>[
  //                                   Container(
  //                                     padding: EdgeInsets.all(9),
  //                                     child: Column(
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment.center,
  //                                       children: [
  //                                         Text(
  //                                           'i.	Please approach your concerned bank at 021-XXX-XXX-XXX or email them at xyz@abc.com. You can also write to them at XYZ bank limited, x floor, x building, x road, Karachi. As per Consumer Grievance Handling Mechanism (CGHM) issued by SBP under BC&CPD Circular No. 1 of 2016, banks are required to resolve complaints of the customers within given timeline, being the first forum of redressal of complaints. Please obtain complaint number and turn around time from the bank for resolution of the matter.',
  //                                           style: TextStyle(
  //                                               color: Colors.black,
  //                                               fontSize: 12),
  //                                         ),
  //                                         Container(
  //                                           child: Button(
  //                                             onPress: () {
  //                                               // if (_popUpFormKey.currentState.validate()) {

  //                                               // }
  //                                             },
  //                                             text: ('close'),
  //                                             // DemoLocalization.of(context)
  //                                             //     .getTranslatedValue('login'),
  //                                             color: Color.fromRGBO(
  //                                                 11, 175, 89, 1),
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _bigForm() {
    return Form(
      key: _popUpFormKey,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Complaint Info',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 115, 50, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 45, 0),
                              child: Row(
                                children: [
                                  Text(
                                    DemoLocalization.of(context)
                                        .getTranslatedValue('cnic'),
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '422013905562',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 90),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 73, 0),
                              child: Row(
                                children: [
                                  Text(
                                    DemoLocalization.of(context)
                                        .getTranslatedValue('name'),
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Muhammad Abdullah',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      DemoLocalization.of(context)
                                          .getTranslatedValue('mobileNum'),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '09007860212',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 90),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 75, 0),
                              child: Row(
                                children: [
                                  Text(
                                    DemoLocalization.of(context)
                                        .getTranslatedValue('email'),
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Abdullah@gmail.com',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 55, //gives the height of the dropdown button
                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          // color: Color(0xFFF2F2F2)
                        ),

                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            items: _possibleCountyrName
                                .map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            hint: Text('Country Name'
                                // DemoLocalization.of(context)
                                //     .getTranslatedValue('bankName'),
                                ),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._countryName = newValueSelected;
                              });
                            },
                            value: _countryName,
                            validator: (_countryName) => _countryName == null
                                ? 'Please select Bank'
                                : null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 55, //gives the height of the dropdown button
                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          // color: Color(0xFFF2F2F2)
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            items: _possibleCityTehsilName
                                .map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            hint: Text('City/Tehsil'
                                // DemoLocalization.of(context)
                                //     .getTranslatedValue('bankcity'),
                                ),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._cityTehsilName = newValueSelected;
                              });
                            },
                            value: _cityTehsilName,
                            validator: (_cityTehsilName) =>
                                _cityTehsilName == null
                                    ? 'Please select Bank'
                                    : null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      child: Container(
                        height: 55, //gives the height of the dropdown button
                        width: MediaQuery.of(context)
                            .size
                            .width, //gives the width of the dropdown button
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                          // color: Color(0xFFF2F2F2)
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              canvasColor: Colors
                                  .white, // background color for the dropdown items
                              buttonTheme: ButtonTheme.of(context).copyWith(
                                alignedDropdown:
                                    true, //If false (the default), then the dropdown's menu will be wider than its button.
                              )),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            items: _possibleProvincelName
                                .map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            hint: Text('Province'
                                // DemoLocalization.of(context)
                                //     .getTranslatedValue('branchCity'),
                                ),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._provincelName = newValueSelected;
                              });
                            },
                            value: _provincelName,
                            validator: (_provincelName) =>
                                _provincelName == null
                                    ? 'Please select Bank'
                                    : null,
                          ),
                        ),
                      ),
                    ),
                    _buildAddressTextField(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  DemoLocalization.of(context).getTranslatedValue('bankDet'),
                  style: TextStyle(
                      color: Color.fromRGBO(0, 115, 50, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.all(0),
            // color: Color.fromRGBO(0, 115, 50, 1),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 0),
                        child: Container(
                          height: 55, //gives the height of the dropdown button
                          width: MediaQuery.of(context)
                              .size
                              .width, //gives the width of the dropdown button
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            // color: Color(0xFFF2F2F2)
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                canvasColor: Colors
                                    .white, // background color for the dropdown items
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown:
                                      true, //If false (the default), then the dropdown's menu will be wider than its button.
                                )),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: _possiblecomplainAgainst
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              hint: Text('Complain Against'),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._complainAgainst = newValueSelected;
                                });
                              },
                              value: _complainAgainst,
                              validator: (_complainAgainst) =>
                                  _complainAgainst == null
                                      ? 'Please select Bank'
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 0),
                        child: Container(
                          height: 55, //gives the height of the dropdown button
                          width: MediaQuery.of(context)
                              .size
                              .width, //gives the width of the dropdown button
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            // color: Color(0xFFF2F2F2)
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                canvasColor: Colors
                                    .white, // background color for the dropdown items
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown:
                                      true, //If false (the default), then the dropdown's menu will be wider than its button.
                                )),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: _possibleBankName
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              hint: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('bankName'),
                              ),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._bankNameSelected = newValueSelected;
                                });
                              },
                              value: _bankNameSelected,
                              validator: (_bankNameSelected) =>
                                  _bankNameSelected == null
                                      ? 'Please select Bank'
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 0),
                        child: Container(
                          height: 55, //gives the height of the dropdown button
                          width: MediaQuery.of(context)
                              .size
                              .width, //gives the width of the dropdown button
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            // color: Color(0xFFF2F2F2)
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                canvasColor: Colors
                                    .white, // background color for the dropdown items
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown:
                                      true, //If false (the default), then the dropdown's menu will be wider than its button.
                                )),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: _possibleProvincelName
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              hint: Text('Bank Province'
                                  // DemoLocalization.of(context)
                                  //     .getTranslatedValue('branchCity'),
                                  ),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._provincelName = newValueSelected;
                                });
                              },
                              value: _provincelName,
                              validator: (_provincelName) =>
                                  _provincelName == null
                                      ? 'Please select Bank'
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 0),
                        child: Container(
                          height: 55, //gives the height of the dropdown button
                          width: MediaQuery.of(context)
                              .size
                              .width, //gives the width of the dropdown button
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            // color: Color(0xFFF2F2F2)
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                canvasColor: Colors
                                    .white, // background color for the dropdown items
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown:
                                      true, //If false (the default), then the dropdown's menu will be wider than its button.
                                )),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: _possibleBankCity
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              hint: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('bankcity'),
                              ),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._bankNameCity = newValueSelected;
                                });
                              },
                              value: _bankNameCity,
                              validator: (_bankNameCity) =>
                                  _bankNameCity == null
                                      ? 'Please select Bank'
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 0, top: 0),
                        child: Container(
                          height: 55, //gives the height of the dropdown button
                          width: MediaQuery.of(context)
                              .size
                              .width, //gives the width of the dropdown button
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            // color: Color(0xFFF2F2F2)
                          ),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                canvasColor: Colors
                                    .white, // background color for the dropdown items
                                buttonTheme: ButtonTheme.of(context).copyWith(
                                  alignedDropdown:
                                      true, //If false (the default), then the dropdown's menu will be wider than its button.
                                )),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: _bankbranchName
                                  .map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              hint: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('branchCity'),
                              ),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._branchName = newValueSelected;
                                });
                              },
                              value: _branchName,
                              validator: (_bankNameSelected) =>
                                  _branchName == null
                                      ? 'Please select Bank'
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      _buildOtherBrancInfoTextField(),
                      SizedBox(height: 10),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  DemoLocalization.of(context)
                                      .getTranslatedValue('complaintDeta'),
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 115, 50, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            // Row(
                            //   children: [
                            //     Text(
                            //         DemoLocalization.of(context)
                            //             .getTranslatedValue('complainCategry'),
                            //         style: TextStyle(
                            //             fontSize: 12,
                            //             fontWeight: FontWeight.w500)),
                            //     Text(
                            //         DemoLocalization.of(context)
                            //             .getTranslatedValue('complaintName'),
                            //         style: TextStyle(fontSize: 12)),
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, bottom: 0, top: 0),
                              child: Container(
                                height:
                                    55, //gives the height of the dropdown button
                                width: MediaQuery.of(context)
                                    .size
                                    .width, //gives the width of the dropdown button
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13)),
                                  // color: Color(0xFFF2F2F2)
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      canvasColor: Colors
                                          .white, // background color for the dropdown items
                                      buttonTheme:
                                          ButtonTheme.of(context).copyWith(
                                        alignedDropdown:
                                            true, //If false (the default), then the dropdown's menu will be wider than its button.
                                      )),
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0.0),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    items: _possiblecomplainCategory
                                        .map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem),
                                      );
                                    }).toList(),
                                    hint: Text('Compaint Category'
                                        // DemoLocalization.of(context)
                                        //     .getTranslatedValue('branchCity'),
                                        ),
                                    onChanged: (String newValueSelected) {
                                      setState(() {
                                        this._complainCategory =
                                            newValueSelected;
                                      });
                                    },
                                    value: _complainCategory,
                                    validator: (_complainCategory) =>
                                        _complainCategory == null
                                            ? 'Please select Bank'
                                            : null,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, bottom: 0, top: 0),
                              child: Container(
                                height:
                                    55, //gives the height of the dropdown button
                                width: MediaQuery.of(context)
                                    .size
                                    .width, //gives the width of the dropdown button
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13)),
                                  // color: Color(0xFFF2F2F2)
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      canvasColor: Colors
                                          .white, // background color for the dropdown items
                                      buttonTheme:
                                          ButtonTheme.of(context).copyWith(
                                        alignedDropdown:
                                            true, //If false (the default), then the dropdown's menu will be wider than its button.
                                      )),
                                  child: DropdownButtonFormField<String>(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0.0),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    items: _possiblesubcomplainCategory
                                        .map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem),
                                      );
                                    }).toList(),
                                    hint: Text('Complaint Sub Category'
                                        // DemoLocalization.of(context)
                                        //     .getTranslatedValue('branchCity'),
                                        ),
                                    onChanged: (String newValueSelected) {
                                      setState(() {
                                        this._subcomplainCategory =
                                            newValueSelected;
                                      });
                                    },
                                    value: _subcomplainCategory,
                                    validator: (_subcomplainCategory) =>
                                        _subcomplainCategory == null
                                            ? 'Please select Bank'
                                            : null,
                                  ),
                                ),
                              ),
                            ),

                            _buildTextField(),
                            // Container(
                            //   height: 50,
                            //   child: Row(
                            //     children: [
                            //       Expanded(
                            //         child: TextFormField(
                            //           decoration: InputDecoration(
                            //             enabledBorder: OutlineInputBorder(
                            //               borderSide: BorderSide(
                            //                   color: Colors.blue),
                            //             ),
                            //             contentPadding:
                            //                 new EdgeInsets.symmetric(
                            //                     vertical: 100.0,
                            //                     horizontal: 10.0),
                            //           ),
                            //           maxLines: 40,
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            // flex: 1,
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, right: 0.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 33,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(21, 183, 98, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.attach_file,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        Text(
                                          DemoLocalization.of(context)
                                              .getTranslatedValue('attachmnts'),
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                // onPress: () {
                                //   // Navigator.of(context).pushReplacement(
                                //   //     MaterialPageRoute(
                                //   //         builder: (context) => Home()));
                                // },
                                // text: 'Attach',
                                // color: Color.fromRGBO(39, 165, 232, 1),
                              ),
                            ),

                            Expanded(
                              // flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 3.0, right: 0.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          DemoLocalization.of(context)
                                              .getTranslatedValue('attchFile'),
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          DemoLocalization.of(context)
                                              .getTranslatedValue(
                                                  'attchFileSize'),
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18),
                      Container(
                        child: Button(
                          onPress: () {
                            // if (_popUpFormKey.currentState.validate()) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                            // }
                          },
                          text: DemoLocalization.of(context)
                              .getTranslatedValue('submitBtn'),
                          color: Color.fromRGBO(39, 165, 232, 1),
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
    );
  }

  Widget _buildAddressTextField() {
    final maxLines = 3;

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      height: maxLines * 24.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: 'Complete Postal Address',
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildOtherBrancInfoTextField() {
    final maxLines = 3;

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      height: maxLines * 24.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: 'Other Branch Information',
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField() {
    final maxLines = 5;

    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      height: maxLines * 24.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: DemoLocalization.of(context).getTranslatedValue('EntrMsg'),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
