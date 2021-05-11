import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/classes/language.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/main.dart';
import 'package:sbp_complaints_management/pages/sign_in_page.dart';
import 'package:sbp_complaints_management/pages/sign_up/sign_up_page.dart';
import 'package:sbp_complaints_management/utils/components/button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _changeLanguage(Language language) {
    Locale _temp;
    switch (language.languageCode) {
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;

      case 'ur':
        _temp = Locale(language.languageCode, 'PK');
        break;
      default:
        _temp = Locale(language.languageCode, 'US');
    }

    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color.fromRGBO(232, 232, 232, 1),
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 140, 30, 0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo_green.png"),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  // Text('Please Select language'),

                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 40,
                          width: 270,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            // child: Directionality(
                            //   textDirection: TextDirection.ltr,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<Language>(
                                        isExpanded: true,
                                        isDense: true,
                                        iconSize: 30,
                                        hint: Text(
                                          DemoLocalization.of(context)
                                              .getTranslatedValue('langname'),
                                        ),
                                        onChanged: (Language language) {
                                          _changeLanguage(language);
                                        },

                                        underline: SizedBox(),
                                        // icon: Icon(
                                        //   Icons.language,
                                        //   color: Colors.green,
                                        // ),
                                        items: Language.languageList()
                                            .map<DropdownMenuItem<Language>>(
                                                (lang) => DropdownMenuItem(
                                                      value: lang,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: <Widget>[
                                                          Text(
                                                            lang.flag,
                                                          ),
                                                          Text(
                                                            lang.name,
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          )
                                                        ],
                                                      ),
                                                    ))
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Button(
                              onPress: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                              },
                              text: DemoLocalization.of(context)
                                  .getTranslatedValue('login'),
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Button(
                        onPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                        },
                        text: DemoLocalization.of(context)
                            .getTranslatedValue('signup'),
                        color: Color.fromRGBO(11, 175, 89, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
