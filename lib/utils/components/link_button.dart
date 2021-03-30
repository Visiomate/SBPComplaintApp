import 'dart:ui';

import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;
  LinkButton({this.color, this.onPress, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(color: Colors.blue),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }
}
