import 'package:injectable/injectable.dart';
import 'package:mask_info_app/data/data_source/store_api.dart';
import 'package:mask_info_app/domain/model/store.dart';
import 'package:mask_info_app/domain/repository/store_repository.dart';

@dev
@Singleton(as: StoreRepository)
class StoreRepositoryImpl implements StoreRepository {
  final _api = StoreApi();

  @override
  Future<List<Store>> getStores() async {
    final result = await _api.getStoreResult();

    if (result.stores == null) {
      return [];
    }

    return result.stores!
        .where(
            (element) => element.remainStat != null || element.stockAt != null)
        .map((e) => Store(
              name: e.name ?? '이름없음',
              address: e.addr ?? '주소없음',
              lat: e.lat ?? 0.0,
              lng: e.lng ?? 0.0,
              remainStatus: e.remainStat!,
            ))
        .toList();
  }
}
