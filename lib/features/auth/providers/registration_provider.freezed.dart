// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterScreenStateFailed value) failed,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationFailed value) initial,
    required TResult Function(RegistrationLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterScreenStateFailed value)? failed,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationFailed value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterScreenStateFailed value)? failed,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationFailed value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res, RegisterScreenState>;
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res, $Val extends RegisterScreenState>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterScreenStateFailedCopyWith<$Res> {
  factory _$$RegisterScreenStateFailedCopyWith(
          _$RegisterScreenStateFailed value,
          $Res Function(_$RegisterScreenStateFailed) then) =
      __$$RegisterScreenStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$RegisterScreenStateFailedCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$RegisterScreenStateFailed>
    implements _$$RegisterScreenStateFailedCopyWith<$Res> {
  __$$RegisterScreenStateFailedCopyWithImpl(_$RegisterScreenStateFailed _value,
      $Res Function(_$RegisterScreenStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$RegisterScreenStateFailed(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterScreenStateFailed implements RegisterScreenStateFailed {
  const _$RegisterScreenStateFailed({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'RegisterScreenState.failed(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterScreenStateFailed &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterScreenStateFailedCopyWith<_$RegisterScreenStateFailed>
      get copyWith => __$$RegisterScreenStateFailedCopyWithImpl<
          _$RegisterScreenStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return failed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return failed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(RegisterScreenStateFailed value) failed,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationFailed value) initial,
    required TResult Function(RegistrationLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterScreenStateFailed value)? failed,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationFailed value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterScreenStateFailed value)? failed,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationFailed value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RegisterScreenStateFailed implements RegisterScreenState {
  const factory RegisterScreenStateFailed({required final String status}) =
      _$RegisterScreenStateFailed;

  String get status;
  @JsonKey(ignore: true)
  _$$RegisterScreenStateFailedCopyWith<_$RegisterScreenStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationSuccessCopyWith<$Res> {
  factory _$$RegistrationSuccessCopyWith(_$RegistrationSuccess value,
          $Res Function(_$RegistrationSuccess) then) =
      __$$RegistrationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSuccessCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$RegistrationSuccess>
    implements _$$RegistrationSuccessCopyWith<$Res> {
  __$$RegistrationSuccessCopyWithImpl(
      _$RegistrationSuccess _value, $Res Function(_$RegistrationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSuccess implements RegistrationSuccess {
  const _$RegistrationSuccess();

  @override
  String toString() {
    return 'RegisterScreenState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(RegisterScreenStateFailed value) failed,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationFailed value) initial,
    required TResult Function(RegistrationLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterScreenStateFailed value)? failed,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationFailed value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterScreenStateFailed value)? failed,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationFailed value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistrationSuccess implements RegisterScreenState {
  const factory RegistrationSuccess() = _$RegistrationSuccess;
}

/// @nodoc
abstract class _$$RegistrationFailedCopyWith<$Res> {
  factory _$$RegistrationFailedCopyWith(_$RegistrationFailed value,
          $Res Function(_$RegistrationFailed) then) =
      __$$RegistrationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationFailedCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$RegistrationFailed>
    implements _$$RegistrationFailedCopyWith<$Res> {
  __$$RegistrationFailedCopyWithImpl(
      _$RegistrationFailed _value, $Res Function(_$RegistrationFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationFailed implements RegistrationFailed {
  const _$RegistrationFailed();

  @override
  String toString() {
    return 'RegisterScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(RegisterScreenStateFailed value) failed,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationFailed value) initial,
    required TResult Function(RegistrationLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterScreenStateFailed value)? failed,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationFailed value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterScreenStateFailed value)? failed,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationFailed value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistrationFailed implements RegisterScreenState {
  const factory RegistrationFailed() = _$RegistrationFailed;
}

/// @nodoc
abstract class _$$RegistrationLoadingCopyWith<$Res> {
  factory _$$RegistrationLoadingCopyWith(_$RegistrationLoading value,
          $Res Function(_$RegistrationLoading) then) =
      __$$RegistrationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationLoadingCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$RegistrationLoading>
    implements _$$RegistrationLoadingCopyWith<$Res> {
  __$$RegistrationLoadingCopyWithImpl(
      _$RegistrationLoading _value, $Res Function(_$RegistrationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationLoading implements RegistrationLoading {
  const _$RegistrationLoading();

  @override
  String toString() {
    return 'RegisterScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistrationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(RegisterScreenStateFailed value) failed,
    required TResult Function(RegistrationSuccess value) success,
    required TResult Function(RegistrationFailed value) initial,
    required TResult Function(RegistrationLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterScreenStateFailed value)? failed,
    TResult? Function(RegistrationSuccess value)? success,
    TResult? Function(RegistrationFailed value)? initial,
    TResult? Function(RegistrationLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterScreenStateFailed value)? failed,
    TResult Function(RegistrationSuccess value)? success,
    TResult Function(RegistrationFailed value)? initial,
    TResult Function(RegistrationLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationLoading implements RegisterScreenState {
  const factory RegistrationLoading() = _$RegistrationLoading;
}
