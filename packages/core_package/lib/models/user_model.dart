import 'package:core_package/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String avatar,
    required String email,
    required String name,
    required String username,
    required bool emailVisibility,
    required bool verified,
    required String type,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity(String id, Collection collection) {
    return User(
        avatar: avatar,
        email: email,
        emailVisibility: emailVisibility,
        id: id,
        name: name,
        username: username,
        verified: verified,
        collection: collection,
        type: _toUserType(type));
  }

  UserType _toUserType(String str) {
    return UserType.values.firstWhere(
      (enumValue) => enumValue.toString().split('.').last == str,
      orElse: () => throw Error(),
    );
  }
}
