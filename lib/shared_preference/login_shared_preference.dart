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

  addNameStringToSF(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }

  getNameValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
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

  addAddressStringToSF(String address) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('address', address);
  }

  getAddresslValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('address');
  }

  addOTPStringToSF(String otp) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('otp', otp);
  }

  getOTPValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('otp');
  }

  clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
