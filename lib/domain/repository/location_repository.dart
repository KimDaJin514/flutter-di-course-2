import 'package:mask_info_app/domain/model/location.dart';

abstract interface class LocationRepository {
  Future<Location> getLocation();
}