import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/questions/first_que.dart';

class CardWidget extends StatelessWidget {
  final Widget titles;
  final Widget subtitles;
  final Widget img;
  final Decoration titl;
  final Widget txt;
  final Decoration decoratn;
  final Widget tarilings;
  final Color color;
  final ShapeBorder brdrRad;
  final ShapeBorder brdrSide;
  final Padding padding;
  CardWidget(
      {this.titles,
      this.subtitles,
      this.tarilings,
      this.brdrRad,
      this.color,
      this.brdrSide,
      this.padding,
      this.decoratn,
      this.img,
      this.txt,
      this.titl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FirstQuestion()));
      },
      child: Column(
        children: [
          Container(
            height: 95,
            width: 172,
            decoration: decoratn,
          ),
          Container(
            height: 50,
            width: 172,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Center(child: txt),
          ),
        ],
      ),
    );
  }
}
