import 'dart:async';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sbp_complaints_management/Constants/api_constants.dart';
import 'package:sbp_complaints_management/Constants/exceptionMsg.dart';
import 'package:sbp_complaints_management/api_provider/base_api_client.dart';
import 'package:sbp_complaints_management/shared_preference/login_shared_preference.dart';

class GetMyApplicationsApiClient extends BaseApiClient {
  LoginSharedPreferences _localDataSource = LoginSharedPreferences();
  // MultiConnectionResponse responseData = MultiConnectionResponse();
  var dio = Dio();

  Future<void> myApplications() async {
    print('${await _localDataSource.getTokenValuesSF()}');
    var dio = Dio();
    final response = await dio.get('https://google.com');
    print(response.data);
    // try {
    // Response response = await dio.get(
    //     ApiConstants.BASE_URL +
    //         'filterapplication/?cnic=${await _localDataSource.getCnicValuesSF()}&first_name=${await _localDataSource.getNameValuesSF()}&mobile=${await _localDataSource.getMobileNumberValuesSF()}', //TODO update the base url+api endpoint
    //     options: Options(headers: {
    //       'Authorization': 'Token ${await _localDataSource.getTokenValuesSF()}'
    //     }));
    // print(response);
    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print(
        'hhhhhhhhhhhhhhhhhhhhhhhhhhaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaattttttttttttt');

    // var responseFromApi = response.data;
    // var success = responseFromApi["status"];
    // if (success != null && success == ApiConstants.SUCCESS_STATUS_CODE) {
    //   return MultiConnectionResponse.fromJson(response.data);
    // } else {
    //   throw SomethingWentWrongException(
    //       message: "No applications submitted by you");
    // }
    // } on DioError catch (e) {
    //   if (e.response != null) {
    //     throw SomethingWentWrongException(message: 'Unknown Error $e');
    //   } else {
    //     throw SocketException("Internet not available");
    //   }
    // }
  }

  Future<void> loginRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');
    var dio = Dio();
    final response = await dio.get('https://google.com');
    print(response.data);
    print(response.statusCode);

    // var res = await http.get('https://github.com/ABDULBASIT450');
    // print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee Loginnn');
  }

  Future<void> signUpRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee signUp');
  }

  Future<void> complainNumberRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee complainNumber');
  }

  Future<void> notificationRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee notification');
  }

  Future<void> complainListRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee complainList');
  }

  Future<void> complainSubmitRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee complainList');
  }

  Future<void> updateProfileRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee complainList');
  }

  Future<void> updatePassRepositry() async {
    print('${await _localDataSource.getTokenValuesSF()}');

    var res = await http.get('https://github.com/ABDULBASIT450');
    print(res.statusCode);

    print('Niceeeeeeeeeeeeeeeeeeeeee complainList');
  }
}
