import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/quistionare/first_que.dart';

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
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => FirstQuestion()));
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => RegisterComplain(),
        //   ),
        // );
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 172,
            decoration: decoratn,
          ),
          // Image.asset(
          //   "assets/card.png",
          //   height: 100,
          // ),
          Container(
            height: 40,
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

              // image: new DecorationImage(
              //   image: new AssetImage("assets/search.png"),
              //   fit: BoxFit.fill,
              // ),
            ),
            child: Center(child: txt),
          ),
        ],
      ),
    );
  }
}
