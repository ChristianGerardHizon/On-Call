import 'package:core_package/core_package.dart';
import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String? id;
  final String? email;
  final String name;

  final Collection collection;

  const Customer({
    this.id,
    this.email,
    required this.name,
    required this.collection,
  });

  @override
  List<Object?> get props => [id, email, name, collection];
}
