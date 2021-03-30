import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/register_complain.dart';

class CardWidget extends StatelessWidget {
  final Widget titles;
  final Widget subtitles;
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
      this.padding});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RegisterComplain(),
          ),
        );
      },
      child: Container(
        height: 120,
        child: Card(
          shape: brdrRad,
          color: Color.fromRGBO(39, 165, 232, 1),
          elevation: 8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: titles,
                trailing: tarilings,
                subtitle: subtitles,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
