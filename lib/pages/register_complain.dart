import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/edit_profile.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class RegisterComplain extends StatefulWidget {
  @override
  _RegisterComplainState createState() => _RegisterComplainState();
}

class _RegisterComplainState extends State<RegisterComplain> {
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

  var _bankNameSelected;
  var _bankNameCity;
  var _branchName;
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
        title: Text('Register Complaint'),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 12, 25, 10),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
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
                                      'CNIC',
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
                                      'Name',
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
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Mobile',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
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
                        SizedBox(width: 90),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 75, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Email',
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
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Bank Details',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 115, 50, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              // color: Color.fromRGBO(0, 115, 50, 1),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Form(
                  key: _popUpFormKey,
                  child: Column(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                                      borderSide: BorderSide(color: Colors.red),
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
                                  hint: Text("Bank Name *"),
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
                          SizedBox(height: 0),
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
                                      borderSide: BorderSide(color: Colors.red),
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
                                  hint: Text("Bank City *"),
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
                                      borderSide: BorderSide(color: Colors.red),
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
                                  hint: Text("Branch Name *"),
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
                          SizedBox(height: 5),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Complaint Details',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 115, 50, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('Complaint Category:',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500)),
                                    Text('Atm Complaint',
                                        style: TextStyle(fontSize: 12)),
                                  ],
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
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(21, 183, 98, 1),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.attach_file,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Attach',
                                              style: TextStyle(
                                                  fontSize: 17,
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
                                              'Image,word or PDF documents etc.',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Maximum size allowed is 1MB.',
                                              style: TextStyle(fontSize: 12),
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
                                // }
                              },
                              text: 'Submit',
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
          ],
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
          hintText: "Enter a message",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
