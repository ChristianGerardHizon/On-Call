import 'package:admin_package/admin_package.dart';
import 'package:authentication_package/authentication_package.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*

  Data

*/
final coreRepoProd = Provider((ref) {
  String getServer() {
    // return 'http://127.0.0.1:8090/';
    return 'https://dev-oncall.fly.dev/';
  }

  final pb = PocketBase(getServer());
  const config = PBCollections(
    users: 'users',
    serviceOrders: 'service_orders',
    serviceProviders: 'service_providers',
    serviceProviderServices: 'service_provider_services',
    services: 'services',
    publicServiceProviders: 'public_service_providers',
    publicServices: 'pubic_services',
    adminServiceProviders: 'admin_service_providers',
    serviceProviderUsers: 'service_provider_user_details',
  );
  return CoreRepository(pb, config);
});
final authRepoProd =
    Provider((ref) => AuthRepositoryImpl(ref.read(coreRepoProd)));
final adminRepoProd =
    Provider((ref) => AdminRepositoryImpl(ref.read(coreRepoProd)));

/*

  Domain

*/

// Authentication
final logInUseCase = Provider((ref) => LoginUseCase(ref.read(authRepoProd)));
final registerUseCase =
    Provider((ref) => RegisterUseCase(ref.read(authRepoProd)));

// admin
final createSPUseCase =
    Provider((ref) => CreateServiceProviderUseCase(ref.read(adminRepoProd)));
final getSPUseCase =
    Provider((ref) => GetServiceProviderUseCase(ref.read(adminRepoProd)));
final listSPUseCase =
    Provider((ref) => GetServiceProvidersUseCase(ref.read(adminRepoProd)));
final getSPUserUseCase =
    Provider((ref) => GetServiceProviderUserUseCase(ref.read(adminRepoProd)));
final listSPUserUseCase =
    Provider((ref) => GetServiceProviderUsersUseCase(ref.read(adminRepoProd)));
