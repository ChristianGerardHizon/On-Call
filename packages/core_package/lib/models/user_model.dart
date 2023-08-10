import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities/entities.dart';
import '../enums/enums.dart';
import '../utils/utils.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'record') required UserDataModel record,
    @JsonKey(name: 'meta') required Map<String, dynamic> meta,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  factory UserDataModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'created') required String created,
    @JsonKey(name: 'updated') required String updated,
    @JsonKey(name: 'collectionId') required String collectionId,
    @JsonKey(name: 'collectionName') required String collectionName,
    @JsonKey(name: 'expand') required Map<String, dynamic> expand,
    @JsonKey(name: 'avatar') required String avatar,
    @JsonKey(name: 'email') required String email,
    @JsonKey(
        name: 'emailVisibility',
        fromJson: JsonParser.boolFromJson,
        toJson: JsonParser.boolToJson)
    required bool emailVisibility,
    @JsonKey(name: 'firstName') required String firstName,
    @JsonKey(
        name: 'isActive',
        fromJson: JsonParser.boolFromJson,
        toJson: JsonParser.boolToJson)
    required bool isActive,
    @JsonKey(name: 'lastName') required String lastName,
    @JsonKey(name: 'type') required UserType type,
    @JsonKey(name: 'username') required String username,
    @JsonKey(
        name: 'verified',
        fromJson: JsonParser.boolFromJson,
        toJson: JsonParser.boolToJson)
    required bool verified,
  }) = _UserDataModel;

  const UserDataModel._();

  User toEntity() {
    return User(
      verified: verified,
      avatar: avatar,
      email: email,
      id: id,
      firstName: firstName,
      lastName: lastName,
      username: username,
      isActive: isActive,
      collection: Collection(id: collectionId, name: collectionName),
      type: type,
    );
  }

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
