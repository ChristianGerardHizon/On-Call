import 'package:equatable/equatable.dart';

class PBCollections extends Equatable {
  final String users;
  final String serviceOrders;
  final String serviceProviders;
  final String serviceProviderServices;
  final String services;
  final String publicServiceProviders;
  final String publicServices;
  final String adminServiceProviders;

  const PBCollections({
    required this.users,
    required this.adminServiceProviders,
    required this.serviceOrders,
    required this.serviceProviders,
    required this.serviceProviderServices,
    required this.services,
    required this.publicServiceProviders,
    required this.publicServices,
  });

  @override
  List<Object> get props => [
        users,
        serviceOrders,
        serviceProviders,
        serviceProviderServices,
        services,
        publicServiceProviders,
        publicServices,
        adminServiceProviders,
      ];
}
