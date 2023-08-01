// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      verified: json['verified'] as bool,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'email': instance.email,
      'name': instance.name,
      'username': instance.username,
      'emailVisibility': instance.emailVisibility,
      'verified': instance.verified,
      'type': instance.type,
    };
