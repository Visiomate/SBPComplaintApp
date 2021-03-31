import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;
  Button({this.color, this.onPress, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,

      // color: color,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 0,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ], color: color, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(top: 10),
      child: FlatButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
