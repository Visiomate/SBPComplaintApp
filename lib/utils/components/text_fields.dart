import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.controller,
    this.hintText,
    this.isPassword,
    this.validator,
    this.brdrside,
    this.onchng,
    this.keybrdtype,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Function validator;
  final OutlineInputBorder brdrside;
  final Function onchng;
  final TextInputType keybrdtype;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      child: Row(
        children: [
          Expanded(
            // flex: 6,
            child: TextFormField(
              keyboardType: keybrdtype,
              onChanged: onchng,
              controller: controller,
              validator: validator,
              obscureText: null == isPassword ? false : true,
              decoration: InputDecoration(
                hintText: null == hintText ? '' : hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  // borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: brdrside,

                //  OutlineInputBorder(
                //   borderSide: BorderSide(color: Colors.blue),
                //   borderRadius: BorderRadius.circular(10.0),
                // ),
                contentPadding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
