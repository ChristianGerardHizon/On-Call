// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoveryScreenState {
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
    required TResult Function(RecoveryScreenStateFailed value) failed,
    required TResult Function(RecoveryScreenStateSuccecss value) success,
    required TResult Function(RecoveryScreenStateInitial value) initial,
    required TResult Function(RecoveryScreenStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecoveryScreenStateFailed value)? failed,
    TResult? Function(RecoveryScreenStateSuccecss value)? success,
    TResult? Function(RecoveryScreenStateInitial value)? initial,
    TResult? Function(RecoveryScreenStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecoveryScreenStateFailed value)? failed,
    TResult Function(RecoveryScreenStateSuccecss value)? success,
    TResult Function(RecoveryScreenStateInitial value)? initial,
    TResult Function(RecoveryScreenStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryScreenStateCopyWith<$Res> {
  factory $RecoveryScreenStateCopyWith(
          RecoveryScreenState value, $Res Function(RecoveryScreenState) then) =
      _$RecoveryScreenStateCopyWithImpl<$Res, RecoveryScreenState>;
}

/// @nodoc
class _$RecoveryScreenStateCopyWithImpl<$Res, $Val extends RecoveryScreenState>
    implements $RecoveryScreenStateCopyWith<$Res> {
  _$RecoveryScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecoveryScreenStateFailedCopyWith<$Res> {
  factory _$$RecoveryScreenStateFailedCopyWith(
          _$RecoveryScreenStateFailed value,
          $Res Function(_$RecoveryScreenStateFailed) then) =
      __$$RecoveryScreenStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$RecoveryScreenStateFailedCopyWithImpl<$Res>
    extends _$RecoveryScreenStateCopyWithImpl<$Res, _$RecoveryScreenStateFailed>
    implements _$$RecoveryScreenStateFailedCopyWith<$Res> {
  __$$RecoveryScreenStateFailedCopyWithImpl(_$RecoveryScreenStateFailed _value,
      $Res Function(_$RecoveryScreenStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$RecoveryScreenStateFailed(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecoveryScreenStateFailed implements RecoveryScreenStateFailed {
  const _$RecoveryScreenStateFailed({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'RecoveryScreenState.failed(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryScreenStateFailed &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryScreenStateFailedCopyWith<_$RecoveryScreenStateFailed>
      get copyWith => __$$RecoveryScreenStateFailedCopyWithImpl<
          _$RecoveryScreenStateFailed>(this, _$identity);

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
    required TResult Function(RecoveryScreenStateFailed value) failed,
    required TResult Function(RecoveryScreenStateSuccecss value) success,
    required TResult Function(RecoveryScreenStateInitial value) initial,
    required TResult Function(RecoveryScreenStateLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecoveryScreenStateFailed value)? failed,
    TResult? Function(RecoveryScreenStateSuccecss value)? success,
    TResult? Function(RecoveryScreenStateInitial value)? initial,
    TResult? Function(RecoveryScreenStateLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecoveryScreenStateFailed value)? failed,
    TResult Function(RecoveryScreenStateSuccecss value)? success,
    TResult Function(RecoveryScreenStateInitial value)? initial,
    TResult Function(RecoveryScreenStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RecoveryScreenStateFailed implements RecoveryScreenState {
  const factory RecoveryScreenStateFailed({required final String status}) =
      _$RecoveryScreenStateFailed;

  String get status;
  @JsonKey(ignore: true)
  _$$RecoveryScreenStateFailedCopyWith<_$RecoveryScreenStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecoveryScreenStateSuccecssCopyWith<$Res> {
  factory _$$RecoveryScreenStateSuccecssCopyWith(
          _$RecoveryScreenStateSuccecss value,
          $Res Function(_$RecoveryScreenStateSuccecss) then) =
      __$$RecoveryScreenStateSuccecssCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecoveryScreenStateSuccecssCopyWithImpl<$Res>
    extends _$RecoveryScreenStateCopyWithImpl<$Res,
        _$RecoveryScreenStateSuccecss>
    implements _$$RecoveryScreenStateSuccecssCopyWith<$Res> {
  __$$RecoveryScreenStateSuccecssCopyWithImpl(
      _$RecoveryScreenStateSuccecss _value,
      $Res Function(_$RecoveryScreenStateSuccecss) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecoveryScreenStateSuccecss implements RecoveryScreenStateSuccecss {
  const _$RecoveryScreenStateSuccecss();

  @override
  String toString() {
    return 'RecoveryScreenState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryScreenStateSuccecss);
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
    required TResult Function(RecoveryScreenStateFailed value) failed,
    required TResult Function(RecoveryScreenStateSuccecss value) success,
    required TResult Function(RecoveryScreenStateInitial value) initial,
    required TResult Function(RecoveryScreenStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecoveryScreenStateFailed value)? failed,
    TResult? Function(RecoveryScreenStateSuccecss value)? success,
    TResult? Function(RecoveryScreenStateInitial value)? initial,
    TResult? Function(RecoveryScreenStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecoveryScreenStateFailed value)? failed,
    TResult Function(RecoveryScreenStateSuccecss value)? success,
    TResult Function(RecoveryScreenStateInitial value)? initial,
    TResult Function(RecoveryScreenStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RecoveryScreenStateSuccecss implements RecoveryScreenState {
  const factory RecoveryScreenStateSuccecss() = _$RecoveryScreenStateSuccecss;
}

/// @nodoc
abstract class _$$RecoveryScreenStateInitialCopyWith<$Res> {
  factory _$$RecoveryScreenStateInitialCopyWith(
          _$RecoveryScreenStateInitial value,
          $Res Function(_$RecoveryScreenStateInitial) then) =
      __$$RecoveryScreenStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecoveryScreenStateInitialCopyWithImpl<$Res>
    extends _$RecoveryScreenStateCopyWithImpl<$Res,
        _$RecoveryScreenStateInitial>
    implements _$$RecoveryScreenStateInitialCopyWith<$Res> {
  __$$RecoveryScreenStateInitialCopyWithImpl(
      _$RecoveryScreenStateInitial _value,
      $Res Function(_$RecoveryScreenStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecoveryScreenStateInitial implements RecoveryScreenStateInitial {
  const _$RecoveryScreenStateInitial();

  @override
  String toString() {
    return 'RecoveryScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryScreenStateInitial);
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
    required TResult Function(RecoveryScreenStateFailed value) failed,
    required TResult Function(RecoveryScreenStateSuccecss value) success,
    required TResult Function(RecoveryScreenStateInitial value) initial,
    required TResult Function(RecoveryScreenStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecoveryScreenStateFailed value)? failed,
    TResult? Function(RecoveryScreenStateSuccecss value)? success,
    TResult? Function(RecoveryScreenStateInitial value)? initial,
    TResult? Function(RecoveryScreenStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecoveryScreenStateFailed value)? failed,
    TResult Function(RecoveryScreenStateSuccecss value)? success,
    TResult Function(RecoveryScreenStateInitial value)? initial,
    TResult Function(RecoveryScreenStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecoveryScreenStateInitial implements RecoveryScreenState {
  const factory RecoveryScreenStateInitial() = _$RecoveryScreenStateInitial;
}

/// @nodoc
abstract class _$$RecoveryScreenStateLoadingCopyWith<$Res> {
  factory _$$RecoveryScreenStateLoadingCopyWith(
          _$RecoveryScreenStateLoading value,
          $Res Function(_$RecoveryScreenStateLoading) then) =
      __$$RecoveryScreenStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecoveryScreenStateLoadingCopyWithImpl<$Res>
    extends _$RecoveryScreenStateCopyWithImpl<$Res,
        _$RecoveryScreenStateLoading>
    implements _$$RecoveryScreenStateLoadingCopyWith<$Res> {
  __$$RecoveryScreenStateLoadingCopyWithImpl(
      _$RecoveryScreenStateLoading _value,
      $Res Function(_$RecoveryScreenStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecoveryScreenStateLoading implements RecoveryScreenStateLoading {
  const _$RecoveryScreenStateLoading();

  @override
  String toString() {
    return 'RecoveryScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryScreenStateLoading);
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
    required TResult Function(RecoveryScreenStateFailed value) failed,
    required TResult Function(RecoveryScreenStateSuccecss value) success,
    required TResult Function(RecoveryScreenStateInitial value) initial,
    required TResult Function(RecoveryScreenStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecoveryScreenStateFailed value)? failed,
    TResult? Function(RecoveryScreenStateSuccecss value)? success,
    TResult? Function(RecoveryScreenStateInitial value)? initial,
    TResult? Function(RecoveryScreenStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecoveryScreenStateFailed value)? failed,
    TResult Function(RecoveryScreenStateSuccecss value)? success,
    TResult Function(RecoveryScreenStateInitial value)? initial,
    TResult Function(RecoveryScreenStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecoveryScreenStateLoading implements RecoveryScreenState {
  const factory RecoveryScreenStateLoading() = _$RecoveryScreenStateLoading;
}
