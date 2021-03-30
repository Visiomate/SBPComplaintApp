import 'package:dio/dio.dart';
import 'package:sbp_complaints_management/Constants/api_constants.dart';

class BaseApiClient {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: ApiConstants.BASE_URL,
  ));

  Dio get dio => _dio;


}
