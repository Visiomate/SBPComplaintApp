import 'package:flutter/material.dart';

class ComplainDetailCardWidget extends StatelessWidget {
  final Widget titles;
  final Widget subtitles;
  final Widget tarilings;
  final Color color;
  final ShapeBorder brdrRad;
  final ShapeBorder brdrSide;
  final Padding padding;
  ComplainDetailCardWidget({
    this.titles,
    this.subtitles,
    this.tarilings,
    this.brdrRad,
    this.color,
    this.brdrSide,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          child: Column(
            children: [
              Container(
                color: Colors.blue[200],
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Text('heeloo'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
