import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sbp_complaints_management/Constants/colors.dart';
import 'package:sbp_complaints_management/Constants/dimensions.dart';

void showAlertForInfo(
    BuildContext context, String testEnglish, String testUrdu
    ) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        var width = MediaQuery.of(context).size.width;
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.BORDER_RADIUS_10)),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.info,
                color: Colors.blue,
                size: 50.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                testEnglish,
                maxLines: 5,
                textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                testUrdu,
                maxLines: 6,
                textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.NORMAL_PADDING_MORE),
              child: SizedBox(
                width: width,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(Constants.BORDER_RADIUS)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        textColor: ColorsConstant.WHITE_COLOR,
                        color: ColorsConstant.PRIMARY_COLOR,
                        child: new Text(
                          'Ok',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      });
}
