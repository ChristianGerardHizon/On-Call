import 'package:freezed_annotation/freezed_annotation.dart';
import '../core_package.dart';

part 'service_provider_user.freezed.dart';
part 'service_provider_user.g.dart';

@freezed
class ServiceProviderUser with _$ServiceProviderUser {
  const factory ServiceProviderUser({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'collectionId') required String collectionId,
    @JsonKey(name: 'collectionName') required String collectionName,
    @JsonKey(name: 'userRef') required String userRef,
    @JsonKey(name: 'avatar') required String avatar,
    @JsonKey(name: 'publicName') required String publicName,
    @JsonKey(name: 'publicPicture') required String publicPicture,
    @JsonKey(name: 'email') required String email,
    @JsonKey(
      name: 'isPublic',
      fromJson: JsonParser.boolFromJson,
    )
    required bool isPublic,
    @JsonKey(
      name: 'isActive',
      fromJson: JsonParser.boolFromJson,
    )
    required bool isActive,
    @JsonKey(
      name: 'emailVisibility',
      fromJson: JsonParser.boolFromJson,
    )
    required bool emailVisibility,
    @JsonKey(name: 'firstName') required String firstName,
    @JsonKey(name: 'lastName') required String lastName,
    @JsonKey(name: 'created') required DateTime created,
    @JsonKey(name: 'updated') required DateTime updated,
  }) = _ServiceProviderUser;

  const ServiceProviderUser._();

  ServiceProvider toEntity() {
    return ServiceProvider(
      id: id,
      userRef: userRef,
      publicPicture: publicPicture,
      publicName: publicName,
      isPublic: isPublic,
      collectionId: collectionId,
      collectionName: collectionName,
      created: created,
      updated: updated,
    );
  }

  factory ServiceProviderUser.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderUserFromJson(json);
}
