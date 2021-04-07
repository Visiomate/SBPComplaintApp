// // import 'package:flutter/material.dart';

// // Widget dropDownButtonsColumn(List<String> list, String hint) {
// //   return Padding(
// //     padding: const EdgeInsets.only(left: 40, right: 40, bottom: 24, top: 12),
// //     child: Container(
// //       height: 55, //gives the height of the dropdown button
// //       width: MediaQuery.of(context)
// //           .size
// //           .width, //gives the width of the dropdown button
// //       decoration: BoxDecoration(
// //           borderRadius: BorderRadius.all(Radius.circular(3)),
// //           color: Color(0xFFF2F2F2)),
// //       // padding: const EdgeInsets.symmetric(horizontal: 13), //you can include padding to control the menu items
// //       child: Theme(
// //           data: Theme.of(context).copyWith(
// //               canvasColor: Colors
// //                   .yellowAccent, // background color for the dropdown items
// //               buttonTheme: ButtonTheme.of(context).copyWith(
// //                 alignedDropdown:
// //                     true, //If false (the default), then the dropdown's menu will be wider than its button.
// //               )),
// //           child: DropdownButtonHideUnderline(
// //             // to hide the default underline of the dropdown button
// //             child: DropdownButton<String>(
// //               iconEnabledColor:
// //                   Color(0xFF595959), // icon color of the dropdown button
// //               items: list.map((String value) {
// //                 return DropdownMenuItem<String>(
// //                   value: value,
// //                   child: Text(
// //                     value,
// //                     style: TextStyle(fontSize: 15),
// //                   ),
// //                 );
// //               }).toList(),
// //               hint: Text(
// //                 hint,
// //                 style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 15),
// //               ), // setting hint
// //               onChanged: (String value) {
// //                 setState(() {
// //                   bankSelected = value; // saving the selected value
// //                 });
// //               },
// //               value: bankSelected, // displaying the selected value
// //             ),
// //           )),
// //     ),
// //   );
// // }
// //

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Nicesnippets',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Welcome to Nicesnippets'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   State createState() => State();
// }

// class _State extends State {
//   TextEditingController nameController = TextEditingController();
//   int _radioValue = 0;

//   void _handleRadioValueChange(int value) {
//     setState(() {
//       _radioValue = value;

//       switch (_radioValue) {
//         case 0:
//           break;
//         case 1:
//           break;
//         case 2:
//           break;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Nicesnippets'),
//         ),
//         body: Padding(
//             padding: EdgeInsets.all(10),
//             child: ListView(
//               children: [
//                 Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(10),
//                     margin: const EdgeInsets.only(top: 50),
//                     child: Text(
//                       'Radio Button',
//                       style: TextStyle(
//                           color: Colors.red,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 30),
//                     )),
//                 new Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     new Radio(
//                       value: 0,
//                       groupValue: _radioValue,
//                       onChanged: _handleRadioValueChange,
//                     ),
//                     new Text(
//                       'First',
//                       style: new TextStyle(fontSize: 16.0),
//                     ),
//                     new Radio(
//                       value: 1,
//                       groupValue: _radioValue,
//                       onChanged: _handleRadioValueChange,
//                     ),
//                     new Text(
//                       'Second',
//                       style: new TextStyle(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                     new Radio(
//                       value: 2,
//                       groupValue: _radioValue,
//                       onChanged: _handleRadioValueChange,
//                     ),
//                     new Text(
//                       'Last',
//                       style: new TextStyle(fontSize: 16.0),
//                     ),
//                   ],
//                 ),
//                 Container(
//                     height: 50,
//                     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                     child: RaisedButton(
//                       textColor: Colors.white,
//                       color: Colors.red,
//                       child: Text('Button'),
//                       onPressed: () {
//                         print(nameController.text);
//                       },
//                     )),
//               ],
//             )));
//   }
// }
