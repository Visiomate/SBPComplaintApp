import 'package:shared_preferences/shared_preferences.dart';

class ComplainSharedPreference {
  addBankNameStringToSF(String bankName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('bankName', bankName);
  }

  getBankNamelValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('bankName');
  }

  addBankCityStringToSF(String bankCity) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('bankCity', bankCity);
  }

  getBankCitylValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('bankCity');
  }

  addBranchNameStringToSF(String branchName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('branchName', branchName);
  }

  getBranchNamelValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('branchName');
  }

  addBranchInfoStringToSF(String branchInfo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('branchInfo', branchInfo);
  }

  getBranchInfolValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('branchInfo');
  }
}
