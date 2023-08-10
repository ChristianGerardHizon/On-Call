import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_options.freezed.dart';

@freezed
class PageOptions with _$PageOptions {
  const factory PageOptions({
    int? start,
    int? end,
    String? expand,
    String? filter,
  }) = _PageOptions;

  const PageOptions._();

  String? buildOptions() {
    return '';
  }
}
