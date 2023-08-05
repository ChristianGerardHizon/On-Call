// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pb_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PBErrorResponse _$$_PBErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_PBErrorResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$_PBErrorResponseToJson(_$_PBErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_PBErrorData _$$_PBErrorDataFromJson(Map<String, dynamic> json) =>
    _$_PBErrorData(
      userRef: json['userRef'] == null
          ? null
          : PBErrorField.fromJson(json['userRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PBErrorDataToJson(_$_PBErrorData instance) =>
    <String, dynamic>{
      'userRef': instance.userRef,
    };

_$_PBErrorField _$$_PBErrorFieldFromJson(Map<String, dynamic> json) =>
    _$_PBErrorField(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_PBErrorFieldToJson(_$_PBErrorField instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
