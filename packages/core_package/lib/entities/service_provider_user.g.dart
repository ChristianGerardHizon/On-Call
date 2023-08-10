// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_provider_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceProviderUser _$$_ServiceProviderUserFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceProviderUser(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      userRef: json['userRef'] as String,
      avatar: json['avatar'] as String,
      publicName: json['publicName'] as String,
      publicPicture: json['publicPicture'] as String,
      email: json['email'] as String,
      isPublic: JsonParser.boolFromJson(json['isPublic']),
      isActive: JsonParser.boolFromJson(json['isActive']),
      emailVisibility: JsonParser.boolFromJson(json['emailVisibility']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$_ServiceProviderUserToJson(
        _$_ServiceProviderUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'userRef': instance.userRef,
      'avatar': instance.avatar,
      'publicName': instance.publicName,
      'publicPicture': instance.publicPicture,
      'email': instance.email,
      'isPublic': instance.isPublic,
      'isActive': instance.isActive,
      'emailVisibility': instance.emailVisibility,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
