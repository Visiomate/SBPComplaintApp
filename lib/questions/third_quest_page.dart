import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/pages/complaint/register_complain.dart';

import 'package:sbp_complaints_management/utils/components/button.dart';

class ThirdQuestPage extends StatefulWidget {
  @override
  _ThirdQuestPageState createState() => _ThirdQuestPageState();
}

class _ThirdQuestPageState extends State<ThirdQuestPage> {
  bool viewVisible;
  bool viewSecondVisible;
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
        leading: IconButton(
          icon: Icon(Icons.chevron_left_sharp),
          onPressed: () => Navigator.pop(context),
        ),
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
            // To make the card compact
            children: <Widget>[
              Text(
                DemoLocalization.of(context).getTranslatedValue('que3'),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                DemoLocalization.of(context)
                    .getTranslatedValue('que3AgreeStat'),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text(
                  DemoLocalization.of(context).getTranslatedValue('agree'),
                ),
                value: 1,
                onChanged: (val) {
                  showWidget(val);
                },
              ),
              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text(
                  DemoLocalization.of(context).getTranslatedValue('noAgree'),
                ),
                value: 2,
                onChanged: (val) {
                  hideWidget(val);
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
                                      Container(
                                        child: Button(
                                          onPress: () {
                                            // if (_popUpFormKey.currentState.validate()) {
                                            Navigator.of(context)
                                                .pushReplacement(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterComplain(),
                                              ),
                                            );
                                            // }
                                          },
                                          text: (DemoLocalization.of(context)
                                              .getTranslatedValue('next')),
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
                                        (DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'disAgreeContnt')),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
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
                                          text: ((DemoLocalization.of(context)
                                              .getTranslatedValue('backDash'))),
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
            ],
          ),
        ),
      ),
    );
  }
}
