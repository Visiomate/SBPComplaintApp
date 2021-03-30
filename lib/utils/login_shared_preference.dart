import 'package:shared_preferences/shared_preferences.dart';

class LoginSharedPreferences {
  addTokenStringToSF(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  getTokenValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  addCnicStringToSF(String cnic) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('cnic_no', cnic);
  }

  getCnicValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('cnic_no');
  }

  addCnicIssueDateStringToSF(String cnicIssueDate) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('cnic_issue_date', cnicIssueDate);
  }

  getCnicIssueDateValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('cnic_issue_date');
  }

  addFirstNameStringToSF(String firstName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('first_name', firstName);
  }

  getFirstNameValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('first_name');
  }

  addMobileNumberStringToSF(String mobileNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('mobile_no', mobileNumber);
  }

  getMobileNumberValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('mobile_no');
  }

  addEmailStringToSF(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
  }

  getEmailValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('email');
  }

  addAppCountToSF(int count) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('Count', count);
  }

  getAppCountValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('Count');
  }

  clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
