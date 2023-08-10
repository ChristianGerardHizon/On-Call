// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageOptions {
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;
  String? get expand => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageOptionsCopyWith<PageOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOptionsCopyWith<$Res> {
  factory $PageOptionsCopyWith(
          PageOptions value, $Res Function(PageOptions) then) =
      _$PageOptionsCopyWithImpl<$Res, PageOptions>;
  @useResult
  $Res call({int? start, int? end, String? expand, String? filter});
}

/// @nodoc
class _$PageOptionsCopyWithImpl<$Res, $Val extends PageOptions>
    implements $PageOptionsCopyWith<$Res> {
  _$PageOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? expand = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageOptionsCopyWith<$Res>
    implements $PageOptionsCopyWith<$Res> {
  factory _$$_PageOptionsCopyWith(
          _$_PageOptions value, $Res Function(_$_PageOptions) then) =
      __$$_PageOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? start, int? end, String? expand, String? filter});
}

/// @nodoc
class __$$_PageOptionsCopyWithImpl<$Res>
    extends _$PageOptionsCopyWithImpl<$Res, _$_PageOptions>
    implements _$$_PageOptionsCopyWith<$Res> {
  __$$_PageOptionsCopyWithImpl(
      _$_PageOptions _value, $Res Function(_$_PageOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? expand = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_PageOptions(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PageOptions extends _PageOptions {
  const _$_PageOptions({this.start, this.end, this.expand, this.filter})
      : super._();

  @override
  final int? start;
  @override
  final int? end;
  @override
  final String? expand;
  @override
  final String? filter;

  @override
  String toString() {
    return 'PageOptions(start: $start, end: $end, expand: $expand, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageOptions &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.expand, expand) || other.expand == expand) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, expand, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageOptionsCopyWith<_$_PageOptions> get copyWith =>
      __$$_PageOptionsCopyWithImpl<_$_PageOptions>(this, _$identity);
}

abstract class _PageOptions extends PageOptions {
  const factory _PageOptions(
      {final int? start,
      final int? end,
      final String? expand,
      final String? filter}) = _$_PageOptions;
  const _PageOptions._() : super._();

  @override
  int? get start;
  @override
  int? get end;
  @override
  String? get expand;
  @override
  String? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_PageOptionsCopyWith<_$_PageOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
