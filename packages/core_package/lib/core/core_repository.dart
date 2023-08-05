import 'package:core_package/entities/pb_collections.dart';
import 'package:pocketbase/pocketbase.dart';

class CoreRepository {
  final PocketBase server;
  final PBCollections config;

  CoreRepository(this.server, this.config);

  // auth store
  AuthStore get auth => server.authStore;

  /*

    Collections

  */
  RecordService get authCol => server.collection(config.users);

  RecordService get adminServiceProvidersCol =>
      server.collection(config.adminServiceProviders);
}
