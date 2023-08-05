// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      token: json['token'] as String,
      record: UserDataModel.fromJson(json['record'] as Map<String, dynamic>),
      meta: json['meta'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'record': instance.record,
      'meta': instance.meta,
    };

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      id: json['id'] as String,
      created: json['created'] as String,
      updated: json['updated'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      expand: json['expand'] as Map<String, dynamic>,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      firstName: json['firstName'] as String,
      isActive: json['isActive'] as bool,
      lastName: json['lastName'] as String,
      type: $enumDecode(_$UserTypeEnumMap, json['type']),
      username: json['username'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'updated': instance.updated,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'expand': instance.expand,
      'avatar': instance.avatar,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'firstName': instance.firstName,
      'isActive': instance.isActive,
      'lastName': instance.lastName,
      'type': _$UserTypeEnumMap[instance.type]!,
      'username': instance.username,
      'verified': instance.verified,
    };

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.customer: 'customer',
  UserType.serviceProvider: 'serviceProvider',
};
