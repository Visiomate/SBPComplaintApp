// import 'package:flutter/material.dart';
// import 'package:sbp_complaints_management/localization/demo_localization.dart';
// import 'package:sbp_complaints_management/pages/PassResetCode.dart';
// import 'package:sbp_complaints_management/pages/first_home_page.dart';
// import 'package:sbp_complaints_management/pages/forgotPassPage.dart';
// import 'package:sbp_complaints_management/pages/home_widget.dart';
// import 'package:sbp_complaints_management/utils/components/button.dart';
// import 'package:sbp_complaints_management/utils/components/text_fields.dart';
// import 'package:email_validator/email_validator.dart';

// class NewPassPage extends StatefulWidget {
//   @override
//   _NewPassPageState createState() => _NewPassPageState();
// }

// class _NewPassPageState extends State<NewPassPage> {
//   TextEditingController _passwordController;
//   TextEditingController _reEnterPasswordController;
//   final GlobalKey<FormState> _popUpFormKey = GlobalKey<FormState>();
//   @override
//   void initState() {
//     super.initState();

//     _passwordController = TextEditingController();
//     _reEnterPasswordController = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Directionality(
//         textDirection: TextDirection.ltr,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.fromLTRB(40, 20, 40, 150),
//             color: Color.fromRGBO(0, 115, 50, 1),
//             child: Container(
//               padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
//               child: Form(
//                 key: _popUpFormKey,
//                 child: Column(
//                   children: <Widget>[
//                     ImageIcon(
//                       AssetImage('assets/email.png'),
//                       color: Colors.white,
//                       size: 80,
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           'Enter the email address associated with your account.',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(height: 10),
//                         CustomTextField(
//                           controller: _passwordController,
//                           hintText: 'New Password',
//                           isPassword: true,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'This field is required';
//                             }
//                             if (value.length < 8) {
//                               return 'Password must be at least 8 characters in length';
//                             }
//                             // Return null if the entered password is valid
//                             return null;
//                           },
//                           // onchng: (value) => _passwordController.text = value,
//                         ),
//                         SizedBox(height: 10),
//                         CustomTextField(
//                           isPassword: true,
//                           controller: _reEnterPasswordController,
//                           hintText: DemoLocalization.of(context)
//                               .getTranslatedValue('reEnterPass'),
//                           // obscureText: true,
//                           validator: (value) {
//                             if (value.isEmpty) {
//                               return 'This field is required';
//                             }

//                             if (_passwordController.text !=
//                                 _reEnterPasswordController.text) {
//                               return 'Confimation password does not match the entered password';
//                             }

//                             return null;
//                           },
//                           // onchng: (value) =>
//                           //     _reEnterPasswordController.text = value,
//                         ),
//                         SizedBox(height: 20),
//                         Container(
//                           child: Button(
//                             onPress: () {
//                               if (_popUpFormKey.currentState.validate()) {
//                                 Navigator.of(context).pushReplacement(
//                                   MaterialPageRoute(
//                                     builder: (context) => Home(),
//                                   ),
//                                 );
//                               }
//                             },
//                             text: 'Continue',
//                             color: Color.fromRGBO(11, 175, 89, 1),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
