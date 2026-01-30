import 'package:flutter_application_1/Core/networking/api_error_handler.dart';
import 'package:flutter_application_1/Core/networking/api_result.dart';
import 'package:flutter_application_1/Core/networking/api_service.dart';
import 'package:flutter_application_1/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_application_1/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponse>> signup(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
