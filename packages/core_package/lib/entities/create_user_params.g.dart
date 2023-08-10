// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserParams _$$_CreateUserParamsFromJson(Map<String, dynamic> json) =>
    _$_CreateUserParams(
      username: json['username'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
      isActive: JsonParser.boolFromJson(json['isActive']),
    );

Map<String, dynamic> _$$_CreateUserParamsToJson(_$_CreateUserParams instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'type': _$UserTypeEnumMap[instance.type]!,
      'isActive': JsonParser.boolToJson(instance.isActive),
    };

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.customer: 'customer',
  UserType.serviceProvider: 'serviceProvider',
};
