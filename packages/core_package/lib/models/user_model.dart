import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/entities.dart';
import '../enums/enums.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String token,
    required UserDataModel record,
    required Map<String, dynamic> meta,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  factory UserDataModel({
    required String id,
    required String created,
    required String updated,
    required String collectionId,
    required String collectionName,
    required Map<String, dynamic> expand,
    required String avatar,
    required String email,
    required bool emailVisibility,
    required String firstName,
    required bool isActive,
    required String lastName,
    required UserType type,
    required String username,
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
