import 'package:core_package/core_package.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String avatar;
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String username;
  final bool verified;
  final bool isActive;
  final UserType type;

  final Collection collection;

  const User({
    required this.collection,
    required this.avatar,
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.verified,
    required this.isActive,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        avatar,
        email,
        firstName,
        lastName,
        username,
        verified,
        isActive,
        collection,
      ];
}
