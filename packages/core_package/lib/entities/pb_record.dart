class PBRecord<T> {
  PBRecord({
    required this.page,
    required this.perPage,
    required this.totalPages,
    required this.totalItems,
    required this.items,
  });

  final int page;
  final int perPage;
  final int totalPages;
  final int totalItems;
  final T items;
}
