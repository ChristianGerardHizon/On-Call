// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pb_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PBRecord<T> {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  T get items => throw _privateConstructorUsedError;
  String? get searchString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PBRecordCopyWith<T, PBRecord<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PBRecordCopyWith<T, $Res> {
  factory $PBRecordCopyWith(
          PBRecord<T> value, $Res Function(PBRecord<T>) then) =
      _$PBRecordCopyWithImpl<T, $Res, PBRecord<T>>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPages,
      int totalItems,
      T items,
      String? searchString});
}

/// @nodoc
class _$PBRecordCopyWithImpl<T, $Res, $Val extends PBRecord<T>>
    implements $PBRecordCopyWith<T, $Res> {
  _$PBRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? items = freezed,
    Object? searchString = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as T,
      searchString: freezed == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PBRecordCopyWith<T, $Res>
    implements $PBRecordCopyWith<T, $Res> {
  factory _$$_PBRecordCopyWith(
          _$_PBRecord<T> value, $Res Function(_$_PBRecord<T>) then) =
      __$$_PBRecordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalPages,
      int totalItems,
      T items,
      String? searchString});
}

/// @nodoc
class __$$_PBRecordCopyWithImpl<T, $Res>
    extends _$PBRecordCopyWithImpl<T, $Res, _$_PBRecord<T>>
    implements _$$_PBRecordCopyWith<T, $Res> {
  __$$_PBRecordCopyWithImpl(
      _$_PBRecord<T> _value, $Res Function(_$_PBRecord<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? totalItems = null,
    Object? items = freezed,
    Object? searchString = freezed,
  }) {
    return _then(_$_PBRecord<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as T,
      searchString: freezed == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PBRecord<T> implements _PBRecord<T> {
  const _$_PBRecord(
      {required this.page,
      required this.perPage,
      required this.totalPages,
      required this.totalItems,
      required this.items,
      this.searchString});

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalPages;
  @override
  final int totalItems;
  @override
  final T items;
  @override
  final String? searchString;

  @override
  String toString() {
    return 'PBRecord<$T>(page: $page, perPage: $perPage, totalPages: $totalPages, totalItems: $totalItems, items: $items, searchString: $searchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PBRecord<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalPages,
      totalItems, const DeepCollectionEquality().hash(items), searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PBRecordCopyWith<T, _$_PBRecord<T>> get copyWith =>
      __$$_PBRecordCopyWithImpl<T, _$_PBRecord<T>>(this, _$identity);
}

abstract class _PBRecord<T> implements PBRecord<T> {
  const factory _PBRecord(
      {required final int page,
      required final int perPage,
      required final int totalPages,
      required final int totalItems,
      required final T items,
      final String? searchString}) = _$_PBRecord<T>;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPages;
  @override
  int get totalItems;
  @override
  T get items;
  @override
  String? get searchString;
  @override
  @JsonKey(ignore: true)
  _$$_PBRecordCopyWith<T, _$_PBRecord<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
