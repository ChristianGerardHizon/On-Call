import 'package:pocketbase/pocketbase.dart';

import 'pb_collections.dart';

class CoreRepository {
  final PocketBase server;

  CoreRepository(this.server);

  // auth store
  AuthStore get auth => server.authStore;

  /*

    Collections

  */
  RecordService get authCol => server.collection(PBCollections.users);
}
