import 'package:freezed_annotation/freezed_annotation.dart';

part 'pb_error_response.freezed.dart';
part 'pb_error_response.g.dart';

@freezed
class PBErrorResponse with _$PBErrorResponse {
  const factory PBErrorResponse({
    int? code,
    String? message,
    dynamic data,
  }) = _PBErrorResponse;

  factory PBErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$PBErrorResponseFromJson(json);
}

@freezed
class PBErrorData with _$PBErrorData {
  const factory PBErrorData({
    PBErrorField? userRef,
  }) = _PBErrorData;

  factory PBErrorData.fromJson(Map<String, dynamic> json) =>
      _$PBErrorDataFromJson(json);
}

@freezed
class PBErrorField with _$PBErrorField {
  const factory PBErrorField({
    String? code,
    String? message,
  }) = _PBErrorField;

  factory PBErrorField.fromJson(Map<String, dynamic> json) =>
      _$PBErrorFieldFromJson(json);
}
