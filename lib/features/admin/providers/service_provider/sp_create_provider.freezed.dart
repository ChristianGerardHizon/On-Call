// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sp_create_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpCreateFailedState value) failed,
    required TResult Function(SpCreateAuthenticatedState value) authenticated,
    required TResult Function(SpCreateUnAuthenticatedState value)
        unauthenticated,
    required TResult Function(SpCreateLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpCreateFailedState value)? failed,
    TResult? Function(SpCreateAuthenticatedState value)? authenticated,
    TResult? Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult? Function(SpCreateLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpCreateFailedState value)? failed,
    TResult Function(SpCreateAuthenticatedState value)? authenticated,
    TResult Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult Function(SpCreateLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpCreateStateCopyWith<$Res> {
  factory $SpCreateStateCopyWith(
          SpCreateState value, $Res Function(SpCreateState) then) =
      _$SpCreateStateCopyWithImpl<$Res, SpCreateState>;
}

/// @nodoc
class _$SpCreateStateCopyWithImpl<$Res, $Val extends SpCreateState>
    implements $SpCreateStateCopyWith<$Res> {
  _$SpCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpCreateFailedStateCopyWith<$Res> {
  factory _$$SpCreateFailedStateCopyWith(_$SpCreateFailedState value,
          $Res Function(_$SpCreateFailedState) then) =
      __$$SpCreateFailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$SpCreateFailedStateCopyWithImpl<$Res>
    extends _$SpCreateStateCopyWithImpl<$Res, _$SpCreateFailedState>
    implements _$$SpCreateFailedStateCopyWith<$Res> {
  __$$SpCreateFailedStateCopyWithImpl(
      _$SpCreateFailedState _value, $Res Function(_$SpCreateFailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SpCreateFailedState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpCreateFailedState implements SpCreateFailedState {
  const _$SpCreateFailedState({required this.status});

  @override
  final String status;

  @override
  String toString() {
    return 'SpCreateState.failed(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpCreateFailedState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpCreateFailedStateCopyWith<_$SpCreateFailedState> get copyWith =>
      __$$SpCreateFailedStateCopyWithImpl<_$SpCreateFailedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return failed(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return failed?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
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
    required TResult Function(SpCreateFailedState value) failed,
    required TResult Function(SpCreateAuthenticatedState value) authenticated,
    required TResult Function(SpCreateUnAuthenticatedState value)
        unauthenticated,
    required TResult Function(SpCreateLoadingState value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpCreateFailedState value)? failed,
    TResult? Function(SpCreateAuthenticatedState value)? authenticated,
    TResult? Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult? Function(SpCreateLoadingState value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpCreateFailedState value)? failed,
    TResult Function(SpCreateAuthenticatedState value)? authenticated,
    TResult Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult Function(SpCreateLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SpCreateFailedState implements SpCreateState {
  const factory SpCreateFailedState({required final String status}) =
      _$SpCreateFailedState;

  String get status;
  @JsonKey(ignore: true)
  _$$SpCreateFailedStateCopyWith<_$SpCreateFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpCreateAuthenticatedStateCopyWith<$Res> {
  factory _$$SpCreateAuthenticatedStateCopyWith(
          _$SpCreateAuthenticatedState value,
          $Res Function(_$SpCreateAuthenticatedState) then) =
      __$$SpCreateAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpCreateAuthenticatedStateCopyWithImpl<$Res>
    extends _$SpCreateStateCopyWithImpl<$Res, _$SpCreateAuthenticatedState>
    implements _$$SpCreateAuthenticatedStateCopyWith<$Res> {
  __$$SpCreateAuthenticatedStateCopyWithImpl(
      _$SpCreateAuthenticatedState _value,
      $Res Function(_$SpCreateAuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpCreateAuthenticatedState implements SpCreateAuthenticatedState {
  const _$SpCreateAuthenticatedState();

  @override
  String toString() {
    return 'SpCreateState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpCreateAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
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
    required TResult Function(SpCreateFailedState value) failed,
    required TResult Function(SpCreateAuthenticatedState value) authenticated,
    required TResult Function(SpCreateUnAuthenticatedState value)
        unauthenticated,
    required TResult Function(SpCreateLoadingState value) loading,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpCreateFailedState value)? failed,
    TResult? Function(SpCreateAuthenticatedState value)? authenticated,
    TResult? Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult? Function(SpCreateLoadingState value)? loading,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpCreateFailedState value)? failed,
    TResult Function(SpCreateAuthenticatedState value)? authenticated,
    TResult Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult Function(SpCreateLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class SpCreateAuthenticatedState implements SpCreateState {
  const factory SpCreateAuthenticatedState() = _$SpCreateAuthenticatedState;
}

/// @nodoc
abstract class _$$SpCreateUnAuthenticatedStateCopyWith<$Res> {
  factory _$$SpCreateUnAuthenticatedStateCopyWith(
          _$SpCreateUnAuthenticatedState value,
          $Res Function(_$SpCreateUnAuthenticatedState) then) =
      __$$SpCreateUnAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpCreateUnAuthenticatedStateCopyWithImpl<$Res>
    extends _$SpCreateStateCopyWithImpl<$Res, _$SpCreateUnAuthenticatedState>
    implements _$$SpCreateUnAuthenticatedStateCopyWith<$Res> {
  __$$SpCreateUnAuthenticatedStateCopyWithImpl(
      _$SpCreateUnAuthenticatedState _value,
      $Res Function(_$SpCreateUnAuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpCreateUnAuthenticatedState implements SpCreateUnAuthenticatedState {
  const _$SpCreateUnAuthenticatedState();

  @override
  String toString() {
    return 'SpCreateState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpCreateUnAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpCreateFailedState value) failed,
    required TResult Function(SpCreateAuthenticatedState value) authenticated,
    required TResult Function(SpCreateUnAuthenticatedState value)
        unauthenticated,
    required TResult Function(SpCreateLoadingState value) loading,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpCreateFailedState value)? failed,
    TResult? Function(SpCreateAuthenticatedState value)? authenticated,
    TResult? Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult? Function(SpCreateLoadingState value)? loading,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpCreateFailedState value)? failed,
    TResult Function(SpCreateAuthenticatedState value)? authenticated,
    TResult Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult Function(SpCreateLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class SpCreateUnAuthenticatedState implements SpCreateState {
  const factory SpCreateUnAuthenticatedState() = _$SpCreateUnAuthenticatedState;
}

/// @nodoc
abstract class _$$SpCreateLoadingStateCopyWith<$Res> {
  factory _$$SpCreateLoadingStateCopyWith(_$SpCreateLoadingState value,
          $Res Function(_$SpCreateLoadingState) then) =
      __$$SpCreateLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpCreateLoadingStateCopyWithImpl<$Res>
    extends _$SpCreateStateCopyWithImpl<$Res, _$SpCreateLoadingState>
    implements _$$SpCreateLoadingStateCopyWith<$Res> {
  __$$SpCreateLoadingStateCopyWithImpl(_$SpCreateLoadingState _value,
      $Res Function(_$SpCreateLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpCreateLoadingState implements SpCreateLoadingState {
  const _$SpCreateLoadingState();

  @override
  String toString() {
    return 'SpCreateState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpCreateLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) failed,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? failed,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? failed,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
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
    required TResult Function(SpCreateFailedState value) failed,
    required TResult Function(SpCreateAuthenticatedState value) authenticated,
    required TResult Function(SpCreateUnAuthenticatedState value)
        unauthenticated,
    required TResult Function(SpCreateLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpCreateFailedState value)? failed,
    TResult? Function(SpCreateAuthenticatedState value)? authenticated,
    TResult? Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult? Function(SpCreateLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpCreateFailedState value)? failed,
    TResult Function(SpCreateAuthenticatedState value)? authenticated,
    TResult Function(SpCreateUnAuthenticatedState value)? unauthenticated,
    TResult Function(SpCreateLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SpCreateLoadingState implements SpCreateState {
  const factory SpCreateLoadingState() = _$SpCreateLoadingState;
}
