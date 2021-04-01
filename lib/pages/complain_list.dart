import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/localization/demo_localization.dart';
import 'package:sbp_complaints_management/pages/home_widget.dart';
import 'package:sbp_complaints_management/utils/components/complainCard.dart';

class ComplainListPage extends StatefulWidget {
  @override
  _ComplainListPageState createState() => _ComplainListPageState();
}

class _ComplainListPageState extends State<ComplainListPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left_sharp),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          backgroundColor: Color.fromRGBO(21, 183, 98, 1),
          title: Text(
            DemoLocalization.of(context).getTranslatedValue('complainList'),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      child: new Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: new Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                          child: SizedBox(
                            height: 40,
                            child: new ListTile(
                              title: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: TextField(
                                  decoration: new InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('searchComplain'),
                                      border: InputBorder.none),
                                  // onChanged: onSearchTextChanged,
                                ),
                              ),
                              trailing: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: new ImageIcon(
                                  AssetImage('assets/search.png'),
                                  color: Colors.blue[300],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                      child: Column(
                        children: [
                          Text(
                              DemoLocalization.of(context)
                                  .getTranslatedValue('complain'),
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                    SizedBox(
                      height: 5,
                    ),
                    ComplainCardWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
