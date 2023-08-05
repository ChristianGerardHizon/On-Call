import 'package:freezed_annotation/freezed_annotation.dart';

import '../core_package.dart';

part 'create_user_params.freezed.dart';
part 'create_user_params.g.dart';

@freezed
class CreateUserParams with _$CreateUserParams {
  const factory CreateUserParams({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'emailVisibility') required bool emailVisibility,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'passwordConfirm') required String passwordConfirm,
    @JsonKey(name: 'firstName') required String firstName,
    @JsonKey(name: 'lastName') required String lastName,
    @JsonKey(name: 'type') required UserType type,
    @JsonKey(name: 'isActive') required bool isActive,
  }) = _CreateUserParams;

  factory CreateUserParams.fromJson(Map<String, dynamic> json) =>
      _$CreateUserParamsFromJson(json);
}
