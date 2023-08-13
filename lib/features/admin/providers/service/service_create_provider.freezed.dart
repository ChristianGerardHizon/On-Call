// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_create_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceCreateFailed value) failed,
    required TResult Function(ServiceCreateSuccess value) success,
    required TResult Function(ServiceCreateLoading value) loading,
    required TResult Function(ServiceCreateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateFailed value)? failed,
    TResult? Function(ServiceCreateSuccess value)? success,
    TResult? Function(ServiceCreateLoading value)? loading,
    TResult? Function(ServiceCreateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateFailed value)? failed,
    TResult Function(ServiceCreateSuccess value)? success,
    TResult Function(ServiceCreateLoading value)? loading,
    TResult Function(ServiceCreateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCreateStateCopyWith<$Res> {
  factory $ServiceCreateStateCopyWith(
          ServiceCreateState value, $Res Function(ServiceCreateState) then) =
      _$ServiceCreateStateCopyWithImpl<$Res, ServiceCreateState>;
}

/// @nodoc
class _$ServiceCreateStateCopyWithImpl<$Res, $Val extends ServiceCreateState>
    implements $ServiceCreateStateCopyWith<$Res> {
  _$ServiceCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceCreateFailedCopyWith<$Res> {
  factory _$$ServiceCreateFailedCopyWith(_$ServiceCreateFailed value,
          $Res Function(_$ServiceCreateFailed) then) =
      __$$ServiceCreateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$ServiceCreateFailedCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateFailed>
    implements _$$ServiceCreateFailedCopyWith<$Res> {
  __$$ServiceCreateFailedCopyWithImpl(
      _$ServiceCreateFailed _value, $Res Function(_$ServiceCreateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ServiceCreateFailed(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServiceCreateFailed implements ServiceCreateFailed {
  const _$ServiceCreateFailed({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'ServiceCreateState.failed(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateFailed &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateFailedCopyWith<_$ServiceCreateFailed> get copyWith =>
      __$$ServiceCreateFailedCopyWithImpl<_$ServiceCreateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return failed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return failed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(ServiceCreateFailed value) failed,
    required TResult Function(ServiceCreateSuccess value) success,
    required TResult Function(ServiceCreateLoading value) loading,
    required TResult Function(ServiceCreateInitial value) initial,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateFailed value)? failed,
    TResult? Function(ServiceCreateSuccess value)? success,
    TResult? Function(ServiceCreateLoading value)? loading,
    TResult? Function(ServiceCreateInitial value)? initial,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateFailed value)? failed,
    TResult Function(ServiceCreateSuccess value)? success,
    TResult Function(ServiceCreateLoading value)? loading,
    TResult Function(ServiceCreateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateFailed implements ServiceCreateState {
  const factory ServiceCreateFailed({required final String status}) =
      _$ServiceCreateFailed;

  String get status;
  @JsonKey(ignore: true)
  _$$ServiceCreateFailedCopyWith<_$ServiceCreateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCreateSuccessCopyWith<$Res> {
  factory _$$ServiceCreateSuccessCopyWith(_$ServiceCreateSuccess value,
          $Res Function(_$ServiceCreateSuccess) then) =
      __$$ServiceCreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateSuccessCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateSuccess>
    implements _$$ServiceCreateSuccessCopyWith<$Res> {
  __$$ServiceCreateSuccessCopyWithImpl(_$ServiceCreateSuccess _value,
      $Res Function(_$ServiceCreateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateSuccess implements ServiceCreateSuccess {
  const _$ServiceCreateSuccess();

  @override
  String toString() {
    return 'ServiceCreateState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceCreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(ServiceCreateFailed value) failed,
    required TResult Function(ServiceCreateSuccess value) success,
    required TResult Function(ServiceCreateLoading value) loading,
    required TResult Function(ServiceCreateInitial value) initial,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateFailed value)? failed,
    TResult? Function(ServiceCreateSuccess value)? success,
    TResult? Function(ServiceCreateLoading value)? loading,
    TResult? Function(ServiceCreateInitial value)? initial,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateFailed value)? failed,
    TResult Function(ServiceCreateSuccess value)? success,
    TResult Function(ServiceCreateLoading value)? loading,
    TResult Function(ServiceCreateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateSuccess implements ServiceCreateState {
  const factory ServiceCreateSuccess() = _$ServiceCreateSuccess;
}

/// @nodoc
abstract class _$$ServiceCreateLoadingCopyWith<$Res> {
  factory _$$ServiceCreateLoadingCopyWith(_$ServiceCreateLoading value,
          $Res Function(_$ServiceCreateLoading) then) =
      __$$ServiceCreateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateLoadingCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateLoading>
    implements _$$ServiceCreateLoadingCopyWith<$Res> {
  __$$ServiceCreateLoadingCopyWithImpl(_$ServiceCreateLoading _value,
      $Res Function(_$ServiceCreateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateLoading implements ServiceCreateLoading {
  const _$ServiceCreateLoading();

  @override
  String toString() {
    return 'ServiceCreateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceCreateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(ServiceCreateFailed value) failed,
    required TResult Function(ServiceCreateSuccess value) success,
    required TResult Function(ServiceCreateLoading value) loading,
    required TResult Function(ServiceCreateInitial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateFailed value)? failed,
    TResult? Function(ServiceCreateSuccess value)? success,
    TResult? Function(ServiceCreateLoading value)? loading,
    TResult? Function(ServiceCreateInitial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateFailed value)? failed,
    TResult Function(ServiceCreateSuccess value)? success,
    TResult Function(ServiceCreateLoading value)? loading,
    TResult Function(ServiceCreateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateLoading implements ServiceCreateState {
  const factory ServiceCreateLoading() = _$ServiceCreateLoading;
}

/// @nodoc
abstract class _$$ServiceCreateInitialCopyWith<$Res> {
  factory _$$ServiceCreateInitialCopyWith(_$ServiceCreateInitial value,
          $Res Function(_$ServiceCreateInitial) then) =
      __$$ServiceCreateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceCreateInitialCopyWithImpl<$Res>
    extends _$ServiceCreateStateCopyWithImpl<$Res, _$ServiceCreateInitial>
    implements _$$ServiceCreateInitialCopyWith<$Res> {
  __$$ServiceCreateInitialCopyWithImpl(_$ServiceCreateInitial _value,
      $Res Function(_$ServiceCreateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceCreateInitial implements ServiceCreateInitial {
  const _$ServiceCreateInitial();

  @override
  String toString() {
    return 'ServiceCreateState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceCreateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(ServiceCreateFailed value) failed,
    required TResult Function(ServiceCreateSuccess value) success,
    required TResult Function(ServiceCreateLoading value) loading,
    required TResult Function(ServiceCreateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceCreateFailed value)? failed,
    TResult? Function(ServiceCreateSuccess value)? success,
    TResult? Function(ServiceCreateLoading value)? loading,
    TResult? Function(ServiceCreateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceCreateFailed value)? failed,
    TResult Function(ServiceCreateSuccess value)? success,
    TResult Function(ServiceCreateLoading value)? loading,
    TResult Function(ServiceCreateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateInitial implements ServiceCreateState {
  const factory ServiceCreateInitial() = _$ServiceCreateInitial;
}
