import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';
import 'package:sbp_complaints_management/utils/components/text_fields.dart';

class NewPassDialoge extends StatefulWidget {
  @override
  _NewPassDialogeState createState() => _NewPassDialogeState();
}

class _NewPassDialogeState extends State<NewPassDialoge> {
  TextEditingController oldPassInputController;
  TextEditingController newPasswordInputController;
  TextEditingController reEnterpasswordInputController;
  final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();

  @override
  initState() {
    oldPassInputController = new TextEditingController();
    newPasswordInputController = new TextEditingController();
    reEnterpasswordInputController = new TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Container(
      height: 300,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              backgroundColor: Colors.transparent,
              child: dialogeContent(context),
            ),
          ),
        ],
      ),
    );
  }

  dialogeContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 340,
          width: 300,
          decoration: BoxDecoration(
            color: Color.fromRGBO(232, 232, 232, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(48, 20, 30, 30),
                  child: Row(
                    children: [
                      Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('createNewPass'),
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Form(
                      key: _popUpFormKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            brdrside: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            controller: oldPassInputController,
                            hintText: DemoLocalization.of(context)
                                .getTranslatedValue('OldPass'),
                          ),
                          SizedBox(height: 10),
                          CustomTextField(
                            brdrside: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            controller: newPasswordInputController,
                            hintText: DemoLocalization.of(context)
                                .getTranslatedValue('NewPass'),
                          ),
                          SizedBox(height: 10),
                          CustomTextField(
                            brdrside: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            controller: reEnterpasswordInputController,
                            hintText: DemoLocalization.of(context)
                                .getTranslatedValue('reEnterPass'),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: Button(
                              onPress: () {
                                // if (_popUpFormKey.currentState.validate()) {
                                // Navigator.of(context).pushReplacement(
                                //   MaterialPageRoute(
                                //     builder: (context) => Home(),
                                //   ),
                                // );
                                //  }
                              },
                              text: DemoLocalization.of(context)
                                  .getTranslatedValue('updatePass'),
                              color: Color.fromRGBO(39, 165, 232, 1),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
