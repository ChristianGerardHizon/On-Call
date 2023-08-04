import 'package:core_package/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String avatar,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String username,
    required bool isActive,
    required bool verified,
    required String type,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity(String id, Collection collection) {
    return User(
        verified: verified,
        avatar: avatar,
        email: email,
        id: id,
        firstName: firstName,
        lastName: lastName,
        username: username,
        isActive: isActive,
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
