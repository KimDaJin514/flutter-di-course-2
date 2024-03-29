import 'package:mask_info_app/domain/model/store.dart';

abstract interface class StoreRepository {
  Future<List<Store>> getStores();
}