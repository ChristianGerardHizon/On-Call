// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginScreenStateFailedCopyWith<$Res> {
  factory _$$LoginScreenStateFailedCopyWith(_$LoginScreenStateFailed value,
          $Res Function(_$LoginScreenStateFailed) then) =
      __$$LoginScreenStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$LoginScreenStateFailedCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenStateFailed>
    implements _$$LoginScreenStateFailedCopyWith<$Res> {
  __$$LoginScreenStateFailedCopyWithImpl(_$LoginScreenStateFailed _value,
      $Res Function(_$LoginScreenStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$LoginScreenStateFailed(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginScreenStateFailed implements LoginScreenStateFailed {
  const _$LoginScreenStateFailed({this.status});

  @override
  final String? status;

  @override
  String toString() {
    return 'LoginScreenState.failed(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenStateFailed &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginScreenStateFailedCopyWith<_$LoginScreenStateFailed> get copyWith =>
      __$$LoginScreenStateFailedCopyWithImpl<_$LoginScreenStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return failed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return failed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class LoginScreenStateFailed implements LoginScreenState {
  const factory LoginScreenStateFailed({final String? status}) =
      _$LoginScreenStateFailed;

  String? get status;
  @JsonKey(ignore: true)
  _$$LoginScreenStateFailedCopyWith<_$LoginScreenStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginScreenSuccessCopyWith<$Res> {
  factory _$$LoginScreenSuccessCopyWith(_$LoginScreenSuccess value,
          $Res Function(_$LoginScreenSuccess) then) =
      __$$LoginScreenSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenSuccessCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenSuccess>
    implements _$$LoginScreenSuccessCopyWith<$Res> {
  __$$LoginScreenSuccessCopyWithImpl(
      _$LoginScreenSuccess _value, $Res Function(_$LoginScreenSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginScreenSuccess implements LoginScreenSuccess {
  const _$LoginScreenSuccess();

  @override
  String toString() {
    return 'LoginScreenState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginScreenSuccess implements LoginScreenState {
  const factory LoginScreenSuccess() = _$LoginScreenSuccess;
}

/// @nodoc
abstract class _$$LoginScreenFailedCopyWith<$Res> {
  factory _$$LoginScreenFailedCopyWith(
          _$LoginScreenFailed value, $Res Function(_$LoginScreenFailed) then) =
      __$$LoginScreenFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenFailedCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenFailed>
    implements _$$LoginScreenFailedCopyWith<$Res> {
  __$$LoginScreenFailedCopyWithImpl(
      _$LoginScreenFailed _value, $Res Function(_$LoginScreenFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginScreenFailed implements LoginScreenFailed {
  const _$LoginScreenFailed();

  @override
  String toString() {
    return 'LoginScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginScreenFailed implements LoginScreenState {
  const factory LoginScreenFailed() = _$LoginScreenFailed;
}

/// @nodoc
abstract class _$$LoginScreenLoadingCopyWith<$Res> {
  factory _$$LoginScreenLoadingCopyWith(_$LoginScreenLoading value,
          $Res Function(_$LoginScreenLoading) then) =
      __$$LoginScreenLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenLoadingCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenLoading>
    implements _$$LoginScreenLoadingCopyWith<$Res> {
  __$$LoginScreenLoadingCopyWithImpl(
      _$LoginScreenLoading _value, $Res Function(_$LoginScreenLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginScreenLoading implements LoginScreenLoading {
  const _$LoginScreenLoading();

  @override
  String toString() {
    return 'LoginScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginScreenLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginScreenLoading implements LoginScreenState {
  const factory LoginScreenLoading() = _$LoginScreenLoading;
}

/// @nodoc
abstract class _$$LoginScreenAuthenticatedCopyWith<$Res> {
  factory _$$LoginScreenAuthenticatedCopyWith(_$LoginScreenAuthenticated value,
          $Res Function(_$LoginScreenAuthenticated) then) =
      __$$LoginScreenAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginScreenAuthenticatedCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$LoginScreenAuthenticated>
    implements _$$LoginScreenAuthenticatedCopyWith<$Res> {
  __$$LoginScreenAuthenticatedCopyWithImpl(_$LoginScreenAuthenticated _value,
      $Res Function(_$LoginScreenAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginScreenAuthenticated implements LoginScreenAuthenticated {
  const _$LoginScreenAuthenticated();

  @override
  String toString() {
    return 'LoginScreenState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginScreenAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginScreenStateFailed value) failed,
    required TResult Function(LoginScreenSuccess value) success,
    required TResult Function(LoginScreenFailed value) initial,
    required TResult Function(LoginScreenLoading value) loading,
    required TResult Function(LoginScreenAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginScreenStateFailed value)? failed,
    TResult? Function(LoginScreenSuccess value)? success,
    TResult? Function(LoginScreenFailed value)? initial,
    TResult? Function(LoginScreenLoading value)? loading,
    TResult? Function(LoginScreenAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginScreenStateFailed value)? failed,
    TResult Function(LoginScreenSuccess value)? success,
    TResult Function(LoginScreenFailed value)? initial,
    TResult Function(LoginScreenLoading value)? loading,
    TResult Function(LoginScreenAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class LoginScreenAuthenticated implements LoginScreenState {
  const factory LoginScreenAuthenticated() = _$LoginScreenAuthenticated;
}
