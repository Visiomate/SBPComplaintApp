import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.controller,
    this.hintText,
    this.isPassword,
    this.validator,
    this.brdrside,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final Function validator;
  final OutlineInputBorder brdrside;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: TextFormField(
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
                contentPadding: EdgeInsets.fromLTRB(17, 3, 3, 3),
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
