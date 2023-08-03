import 'package:core_package/core_package.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String avatar;
  final String id;
  final String email;
  final String name;
  final String username;
  final bool emailVisibility;
  final bool isActive;
  final UserType type;

  final Collection collection;

  const User({
    required this.collection,
    required this.avatar,
    required this.id,
    required this.email,
    required this.name,
    required this.username,
    required this.emailVisibility,
    required this.isActive,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        avatar,
        email,
        name,
        username,
        emailVisibility,
        isActive,
        collection,
      ];
}

enum UserType {
  admin,
  customer,
  serviceProvider,
}
