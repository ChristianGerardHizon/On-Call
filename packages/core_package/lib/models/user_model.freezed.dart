// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'record')
  UserDataModel get record => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  Map<String, dynamic> get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'record') UserDataModel record,
      @JsonKey(name: 'meta') Map<String, dynamic> meta});

  $UserDataModelCopyWith<$Res> get record;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? record = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res> get record {
    return $UserDataModelCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'record') UserDataModel record,
      @JsonKey(name: 'meta') Map<String, dynamic> meta});

  @override
  $UserDataModelCopyWith<$Res> get record;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? record = null,
    Object? meta = null,
  }) {
    return _then(_$_UserModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'record') required this.record,
      @JsonKey(name: 'meta') required final Map<String, dynamic> meta})
      : _meta = meta;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'record')
  final UserDataModel record;
  final Map<String, dynamic> _meta;
  @override
  @JsonKey(name: 'meta')
  Map<String, dynamic> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  @override
  String toString() {
    return 'UserModel(token: $token, record: $record, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.record, record) || other.record == record) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, record, const DeepCollectionEquality().hash(_meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'record') required final UserDataModel record,
          @JsonKey(name: 'meta') required final Map<String, dynamic> meta}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'record')
  UserDataModel get record;
  @override
  @JsonKey(name: 'meta')
  Map<String, dynamic> get meta;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated')
  String get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionId')
  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'collectionName')
  String get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expand')
  Map<String, dynamic> get expand => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'emailVisibility',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get emailVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'isActive',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  UserType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'verified',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'created')
          String created,
      @JsonKey(name: 'updated')
          String updated,
      @JsonKey(name: 'collectionId')
          String collectionId,
      @JsonKey(name: 'collectionName')
          String collectionName,
      @JsonKey(name: 'expand')
          Map<String, dynamic> expand,
      @JsonKey(name: 'avatar')
          String avatar,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'emailVisibility', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool emailVisibility,
      @JsonKey(name: 'firstName')
          String firstName,
      @JsonKey(name: 'isActive', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool isActive,
      @JsonKey(name: 'lastName')
          String lastName,
      @JsonKey(name: 'type')
          UserType type,
      @JsonKey(name: 'username')
          String username,
      @JsonKey(name: 'verified', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool verified});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = null,
    Object? avatar = null,
    Object? email = null,
    Object? emailVisibility = null,
    Object? firstName = null,
    Object? isActive = null,
    Object? lastName = null,
    Object? type = null,
    Object? username = null,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      expand: null == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$_UserDataModelCopyWith(
          _$_UserDataModel value, $Res Function(_$_UserDataModel) then) =
      __$$_UserDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'created')
          String created,
      @JsonKey(name: 'updated')
          String updated,
      @JsonKey(name: 'collectionId')
          String collectionId,
      @JsonKey(name: 'collectionName')
          String collectionName,
      @JsonKey(name: 'expand')
          Map<String, dynamic> expand,
      @JsonKey(name: 'avatar')
          String avatar,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'emailVisibility', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool emailVisibility,
      @JsonKey(name: 'firstName')
          String firstName,
      @JsonKey(name: 'isActive', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool isActive,
      @JsonKey(name: 'lastName')
          String lastName,
      @JsonKey(name: 'type')
          UserType type,
      @JsonKey(name: 'username')
          String username,
      @JsonKey(name: 'verified', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          bool verified});
}

/// @nodoc
class __$$_UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$_UserDataModel>
    implements _$$_UserDataModelCopyWith<$Res> {
  __$$_UserDataModelCopyWithImpl(
      _$_UserDataModel _value, $Res Function(_$_UserDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? updated = null,
    Object? collectionId = null,
    Object? collectionName = null,
    Object? expand = null,
    Object? avatar = null,
    Object? email = null,
    Object? emailVisibility = null,
    Object? firstName = null,
    Object? isActive = null,
    Object? lastName = null,
    Object? type = null,
    Object? username = null,
    Object? verified = null,
  }) {
    return _then(_$_UserDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      expand: null == expand
          ? _value._expand
          : expand // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataModel extends _UserDataModel {
  _$_UserDataModel(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'created')
          required this.created,
      @JsonKey(name: 'updated')
          required this.updated,
      @JsonKey(name: 'collectionId')
          required this.collectionId,
      @JsonKey(name: 'collectionName')
          required this.collectionName,
      @JsonKey(name: 'expand')
          required final Map<String, dynamic> expand,
      @JsonKey(name: 'avatar')
          required this.avatar,
      @JsonKey(name: 'email')
          required this.email,
      @JsonKey(name: 'emailVisibility', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required this.emailVisibility,
      @JsonKey(name: 'firstName')
          required this.firstName,
      @JsonKey(name: 'isActive', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required this.isActive,
      @JsonKey(name: 'lastName')
          required this.lastName,
      @JsonKey(name: 'type')
          required this.type,
      @JsonKey(name: 'username')
          required this.username,
      @JsonKey(name: 'verified', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required this.verified})
      : _expand = expand,
        super._();

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'created')
  final String created;
  @override
  @JsonKey(name: 'updated')
  final String updated;
  @override
  @JsonKey(name: 'collectionId')
  final String collectionId;
  @override
  @JsonKey(name: 'collectionName')
  final String collectionName;
  final Map<String, dynamic> _expand;
  @override
  @JsonKey(name: 'expand')
  Map<String, dynamic> get expand {
    if (_expand is EqualUnmodifiableMapView) return _expand;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_expand);
  }

  @override
  @JsonKey(name: 'avatar')
  final String avatar;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(
      name: 'emailVisibility',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  final bool emailVisibility;
  @override
  @JsonKey(name: 'firstName')
  final String firstName;
  @override
  @JsonKey(
      name: 'isActive',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  final bool isActive;
  @override
  @JsonKey(name: 'lastName')
  final String lastName;
  @override
  @JsonKey(name: 'type')
  final UserType type;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(
      name: 'verified',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  final bool verified;

  @override
  String toString() {
    return 'UserDataModel(id: $id, created: $created, updated: $updated, collectionId: $collectionId, collectionName: $collectionName, expand: $expand, avatar: $avatar, email: $email, emailVisibility: $emailVisibility, firstName: $firstName, isActive: $isActive, lastName: $lastName, type: $type, username: $username, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            const DeepCollectionEquality().equals(other._expand, _expand) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVisibility, emailVisibility) ||
                other.emailVisibility == emailVisibility) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created,
      updated,
      collectionId,
      collectionName,
      const DeepCollectionEquality().hash(_expand),
      avatar,
      email,
      emailVisibility,
      firstName,
      isActive,
      lastName,
      type,
      username,
      verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      __$$_UserDataModelCopyWithImpl<_$_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataModelToJson(
      this,
    );
  }
}

abstract class _UserDataModel extends UserDataModel {
  factory _UserDataModel(
      {@JsonKey(name: 'id')
          required final String id,
      @JsonKey(name: 'created')
          required final String created,
      @JsonKey(name: 'updated')
          required final String updated,
      @JsonKey(name: 'collectionId')
          required final String collectionId,
      @JsonKey(name: 'collectionName')
          required final String collectionName,
      @JsonKey(name: 'expand')
          required final Map<String, dynamic> expand,
      @JsonKey(name: 'avatar')
          required final String avatar,
      @JsonKey(name: 'email')
          required final String email,
      @JsonKey(name: 'emailVisibility', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required final bool emailVisibility,
      @JsonKey(name: 'firstName')
          required final String firstName,
      @JsonKey(name: 'isActive', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required final bool isActive,
      @JsonKey(name: 'lastName')
          required final String lastName,
      @JsonKey(name: 'type')
          required final UserType type,
      @JsonKey(name: 'username')
          required final String username,
      @JsonKey(name: 'verified', fromJson: JsonParser.boolFromJson, toJson: JsonParser.boolToJson)
          required final bool verified}) = _$_UserDataModel;
  _UserDataModel._() : super._();

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'created')
  String get created;
  @override
  @JsonKey(name: 'updated')
  String get updated;
  @override
  @JsonKey(name: 'collectionId')
  String get collectionId;
  @override
  @JsonKey(name: 'collectionName')
  String get collectionName;
  @override
  @JsonKey(name: 'expand')
  Map<String, dynamic> get expand;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(
      name: 'emailVisibility',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get emailVisibility;
  @override
  @JsonKey(name: 'firstName')
  String get firstName;
  @override
  @JsonKey(
      name: 'isActive',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get isActive;
  @override
  @JsonKey(name: 'lastName')
  String get lastName;
  @override
  @JsonKey(name: 'type')
  UserType get type;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(
      name: 'verified',
      fromJson: JsonParser.boolFromJson,
      toJson: JsonParser.boolToJson)
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
