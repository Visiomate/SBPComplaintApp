import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/questions/third_quest_page.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class SecondQuestionPage extends StatefulWidget {
  @override
  _SecondQuestionPageState createState() => _SecondQuestionPageState();
}

class _SecondQuestionPageState extends State<SecondQuestionPage> {
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
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                DemoLocalization.of(context).getTranslatedValue('que2'),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text(
                  DemoLocalization.of(context).getTranslatedValue('no'),
                ),
                value: 1,
                onChanged: (val) {
                  hideWidget(val);
                },
              ),
              RadioListTile(
                groupValue: selectedRadioTile,
                title: Text(
                  DemoLocalization.of(context).getTranslatedValue('yes'),
                ),
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
                                        DemoLocalization.of(context)
                                            .getTranslatedValue('que2Yes'),
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
                                          text: DemoLocalization.of(context)
                                              .getTranslatedValue('backDash'),
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
                                        DemoLocalization.of(context)
                                            .getTranslatedValue('que2No'),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Container(
                                        child: Button(
                                          onPress: () {
                                            // if (_popUpFormKey.currentState.validate()) {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ThirdQuestPage(),
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
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
