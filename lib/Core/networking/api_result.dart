
import 'package:flutter_application_1/Core/networking/api_error_handler.dart';
import 'package:flutter_application_1/Core/networking/appi_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';



@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}