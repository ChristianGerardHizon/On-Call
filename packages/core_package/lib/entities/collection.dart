import 'package:equatable/equatable.dart';

class Collection extends Equatable {
  final String id;
  final String name;

  const Collection({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
