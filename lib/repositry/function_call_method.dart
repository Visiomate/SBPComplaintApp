import 'package:sbp_complaints_management/api_calls/my_applications_api_client.dart';

class FunctionCallRepositry {
  GetMyApplicationsApiClient _getMyApplicationsApiClient =
      GetMyApplicationsApiClient();

  Future<void> myApplications() => _getMyApplicationsApiClient.myApplications();
  Future<void> loginRepositry() => _getMyApplicationsApiClient.loginRepositry();
  Future<void> signUpRepositry() =>
      _getMyApplicationsApiClient.signUpRepositry();
  Future<void> complainNumberRepositry() =>
      _getMyApplicationsApiClient.complainNumberRepositry();
  Future<void> notificationRepositry() =>
      _getMyApplicationsApiClient.notificationRepositry();
  Future<void> complainListRepositry() =>
      _getMyApplicationsApiClient.complainListRepositry();
       Future<void> complainSubmitRepositry() =>
      _getMyApplicationsApiClient.complainSubmitRepositry();
}
