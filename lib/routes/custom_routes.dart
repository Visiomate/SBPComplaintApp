import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/pages/first_home_page.dart';
import 'package:sbp_complaints_management/pages/login_page.dart';
import 'package:sbp_complaints_management/pages/page_not_found.dart';
import 'package:sbp_complaints_management/pages/sign_in_page.dart';
import 'package:sbp_complaints_management/pages/termsAndCondition.dart';
import 'package:sbp_complaints_management/routes/route_names.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => TermsAndCondition());
      case signinRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case homepageRoute:
        return MaterialPageRoute(builder: (_) => FirstHomePage());
    }
    return MaterialPageRoute(builder: (_) => PageNotFound());
  }
}
