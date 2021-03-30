import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _CircularProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CircularProgressIndicatorAppState();
  }
}

class _CircularProgressIndicatorAppState
    extends State<_CircularProgressIndicatorApp> {
  double _progress = 0;

  void startTimer() {
    new Timer.periodic(
      Duration(seconds: 1),
          (Timer timer) =>
          setState(
                () {
              if (_progress == 1) {
                timer.cancel();
              } else {
                _progress += 0.2;
              }
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Container(
          height: 200,
          width: 100,
        ),
      ),
    );
  }
}
