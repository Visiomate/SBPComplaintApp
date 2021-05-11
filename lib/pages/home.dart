import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/repositry/function_call_method.dart';
import 'package:sbp_complaints_management/utils/components/card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FunctionCallRepositry _functionCallRepositry = FunctionCallRepositry();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 183, 98, 1),
        title: Text(
          DemoLocalization.of(context).getTranslatedValue('newCompl'),
        ),
        actions: <Widget>[
          IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.powerOff),
              iconSize: 20,
              onPressed: () {
                print("Pressed");
              }),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry1'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry2'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry3'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry4'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry5'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry6'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry7'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry8'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry9'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry10'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry11'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry12'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry13'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry14'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry15'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry16'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry17'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry18'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry19'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry20'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry21'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CardWidget(
                        decoratn: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/mony1.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        txt: Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('categry22'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
