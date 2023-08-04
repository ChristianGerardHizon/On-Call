import 'package:core_package/core/core_repository.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:authentication_package/authentication_package.dart';
import 'package:pocketbase/pocketbase.dart';

void main() {
  final pb = PocketBase('http://127.0.0.1:8090');
  const config = PBCollections(
    users: 'users',
    serviceOrders: 'serviceOrders',
    serviceProviders: 'serviceProviders',
    serviceProviderServices: 'serviceProviderServices',
    services: 'services',
    publicServiceProviders: 'publicServiceProviders',
    publicServices: 'publicServices',
    adminServiceProviders: '',
  );
  final CoreRepository repository = CoreRepository(pb, config);
  final AuthRepository auth = AuthDataRepository(repository);

  test('login', () async {
    final result = await auth.logIn('test@test.com', 'Password101');
    result.fold(
      (l) => print({'Error': l}),
      (r) => print({'User': r}),
    );
  });

  test('isSignedIn', () async {
    final result = await auth.logIn('test@test.com', 'Password101');
    result.fold(
      (l) => print({'Error': l}),
      (r) => print({'User': r}),
    );

    final isSignedIn = auth.isSignedIn();
  });

  test('getUser', () async {
    await auth.logIn('test@test.com', 'Password101');
    final user = auth.getUser();
    print({'user': user});
  });
}
