import 'package:flutter_application_1/Core/networking/api_result.dart';
import 'package:flutter_application_1/Core/networking/api_service.dart';
import 'package:flutter_application_1/features/login/data/models/login_request_body.dart';
import 'package:flutter_application_1/features/login/data/models/login_response.dart';
import 'package:flutter_application_1/Core/networking/api_error_handler.dart';

class LoginRepo{
final ApiService _apiService;
LoginRepo(this._apiService);
Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody)async{
  try{
    final response=await _apiService.login(loginRequestBody);
    return ApiResult.success(response);
  }catch(errro){
    return ApiResult.failure(ErrorHandler.handle(errro));
  }

}

}