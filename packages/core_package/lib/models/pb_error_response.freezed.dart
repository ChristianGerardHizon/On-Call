// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pb_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PBErrorResponse _$PBErrorResponseFromJson(Map<String, dynamic> json) {
  return _PBErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$PBErrorResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PBErrorResponseCopyWith<PBErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PBErrorResponseCopyWith<$Res> {
  factory $PBErrorResponseCopyWith(
          PBErrorResponse value, $Res Function(PBErrorResponse) then) =
      _$PBErrorResponseCopyWithImpl<$Res, PBErrorResponse>;
  @useResult
  $Res call({int? code, String? message, dynamic data});
}

/// @nodoc
class _$PBErrorResponseCopyWithImpl<$Res, $Val extends PBErrorResponse>
    implements $PBErrorResponseCopyWith<$Res> {
  _$PBErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PBErrorResponseCopyWith<$Res>
    implements $PBErrorResponseCopyWith<$Res> {
  factory _$$_PBErrorResponseCopyWith(
          _$_PBErrorResponse value, $Res Function(_$_PBErrorResponse) then) =
      __$$_PBErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, dynamic data});
}

/// @nodoc
class __$$_PBErrorResponseCopyWithImpl<$Res>
    extends _$PBErrorResponseCopyWithImpl<$Res, _$_PBErrorResponse>
    implements _$$_PBErrorResponseCopyWith<$Res> {
  __$$_PBErrorResponseCopyWithImpl(
      _$_PBErrorResponse _value, $Res Function(_$_PBErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PBErrorResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PBErrorResponse implements _PBErrorResponse {
  const _$_PBErrorResponse({this.code, this.message, this.data});

  factory _$_PBErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PBErrorResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'PBErrorResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PBErrorResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PBErrorResponseCopyWith<_$_PBErrorResponse> get copyWith =>
      __$$_PBErrorResponseCopyWithImpl<_$_PBErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PBErrorResponseToJson(
      this,
    );
  }
}

abstract class _PBErrorResponse implements PBErrorResponse {
  const factory _PBErrorResponse(
      {final int? code,
      final String? message,
      final dynamic data}) = _$_PBErrorResponse;

  factory _PBErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_PBErrorResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_PBErrorResponseCopyWith<_$_PBErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PBErrorData _$PBErrorDataFromJson(Map<String, dynamic> json) {
  return _PBErrorData.fromJson(json);
}

/// @nodoc
mixin _$PBErrorData {
  PBErrorField? get userRef => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PBErrorDataCopyWith<PBErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PBErrorDataCopyWith<$Res> {
  factory $PBErrorDataCopyWith(
          PBErrorData value, $Res Function(PBErrorData) then) =
      _$PBErrorDataCopyWithImpl<$Res, PBErrorData>;
  @useResult
  $Res call({PBErrorField? userRef});

  $PBErrorFieldCopyWith<$Res>? get userRef;
}

/// @nodoc
class _$PBErrorDataCopyWithImpl<$Res, $Val extends PBErrorData>
    implements $PBErrorDataCopyWith<$Res> {
  _$PBErrorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
  }) {
    return _then(_value.copyWith(
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as PBErrorField?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PBErrorFieldCopyWith<$Res>? get userRef {
    if (_value.userRef == null) {
      return null;
    }

    return $PBErrorFieldCopyWith<$Res>(_value.userRef!, (value) {
      return _then(_value.copyWith(userRef: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PBErrorDataCopyWith<$Res>
    implements $PBErrorDataCopyWith<$Res> {
  factory _$$_PBErrorDataCopyWith(
          _$_PBErrorData value, $Res Function(_$_PBErrorData) then) =
      __$$_PBErrorDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PBErrorField? userRef});

  @override
  $PBErrorFieldCopyWith<$Res>? get userRef;
}

/// @nodoc
class __$$_PBErrorDataCopyWithImpl<$Res>
    extends _$PBErrorDataCopyWithImpl<$Res, _$_PBErrorData>
    implements _$$_PBErrorDataCopyWith<$Res> {
  __$$_PBErrorDataCopyWithImpl(
      _$_PBErrorData _value, $Res Function(_$_PBErrorData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
  }) {
    return _then(_$_PBErrorData(
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as PBErrorField?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PBErrorData implements _PBErrorData {
  const _$_PBErrorData({this.userRef});

  factory _$_PBErrorData.fromJson(Map<String, dynamic> json) =>
      _$$_PBErrorDataFromJson(json);

  @override
  final PBErrorField? userRef;

  @override
  String toString() {
    return 'PBErrorData(userRef: $userRef)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PBErrorData &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userRef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PBErrorDataCopyWith<_$_PBErrorData> get copyWith =>
      __$$_PBErrorDataCopyWithImpl<_$_PBErrorData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PBErrorDataToJson(
      this,
    );
  }
}

abstract class _PBErrorData implements PBErrorData {
  const factory _PBErrorData({final PBErrorField? userRef}) = _$_PBErrorData;

  factory _PBErrorData.fromJson(Map<String, dynamic> json) =
      _$_PBErrorData.fromJson;

  @override
  PBErrorField? get userRef;
  @override
  @JsonKey(ignore: true)
  _$$_PBErrorDataCopyWith<_$_PBErrorData> get copyWith =>
      throw _privateConstructorUsedError;
}

PBErrorField _$PBErrorFieldFromJson(Map<String, dynamic> json) {
  return _PBErrorField.fromJson(json);
}

/// @nodoc
mixin _$PBErrorField {
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PBErrorFieldCopyWith<PBErrorField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PBErrorFieldCopyWith<$Res> {
  factory $PBErrorFieldCopyWith(
          PBErrorField value, $Res Function(PBErrorField) then) =
      _$PBErrorFieldCopyWithImpl<$Res, PBErrorField>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class _$PBErrorFieldCopyWithImpl<$Res, $Val extends PBErrorField>
    implements $PBErrorFieldCopyWith<$Res> {
  _$PBErrorFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PBErrorFieldCopyWith<$Res>
    implements $PBErrorFieldCopyWith<$Res> {
  factory _$$_PBErrorFieldCopyWith(
          _$_PBErrorField value, $Res Function(_$_PBErrorField) then) =
      __$$_PBErrorFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$_PBErrorFieldCopyWithImpl<$Res>
    extends _$PBErrorFieldCopyWithImpl<$Res, _$_PBErrorField>
    implements _$$_PBErrorFieldCopyWith<$Res> {
  __$$_PBErrorFieldCopyWithImpl(
      _$_PBErrorField _value, $Res Function(_$_PBErrorField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_PBErrorField(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PBErrorField implements _PBErrorField {
  const _$_PBErrorField({this.code, this.message});

  factory _$_PBErrorField.fromJson(Map<String, dynamic> json) =>
      _$$_PBErrorFieldFromJson(json);

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'PBErrorField(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PBErrorField &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PBErrorFieldCopyWith<_$_PBErrorField> get copyWith =>
      __$$_PBErrorFieldCopyWithImpl<_$_PBErrorField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PBErrorFieldToJson(
      this,
    );
  }
}

abstract class _PBErrorField implements PBErrorField {
  const factory _PBErrorField({final String? code, final String? message}) =
      _$_PBErrorField;

  factory _PBErrorField.fromJson(Map<String, dynamic> json) =
      _$_PBErrorField.fromJson;

  @override
  String? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_PBErrorFieldCopyWith<_$_PBErrorField> get copyWith =>
      throw _privateConstructorUsedError;
}
