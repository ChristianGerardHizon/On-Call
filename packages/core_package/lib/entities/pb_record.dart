import 'package:freezed_annotation/freezed_annotation.dart';

part 'pb_record.freezed.dart';

@freezed
class PBRecord<T> with _$PBRecord<T> {
  const factory PBRecord({
    required int page,
    required int perPage,
    required int totalPages,
    required int totalItems,
    required T items,
    String? searchString,
  }) = _PBRecord<T>;
}
