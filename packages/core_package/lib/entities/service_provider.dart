import 'package:freezed_annotation/freezed_annotation.dart';

import '../core_package.dart';

part 'service_provider.freezed.dart';
part 'service_provider.g.dart';

@freezed
class ServiceProvider with _$ServiceProvider {
  const factory ServiceProvider({
    required String id,
    @JsonKey(name: 'collectionId') required String collectionId,
    @JsonKey(name: 'collectionName') required String collectionName,
    @JsonKey(name: 'userRef') required String userRef,
    @JsonKey(name: 'publicPicture') String? publicPicture,
    @JsonKey(name: 'publicName') required String publicName,
    @JsonKey(
      name: 'isPublic',
      fromJson: JsonParser.boolFromJson,
    )
    required bool isPublic,
    @JsonKey(name: 'created') required DateTime created,
    @JsonKey(name: 'updated') required DateTime updated,
  }) = _ServiceProvider;

  factory ServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$ServiceProviderFromJson(json);
}
