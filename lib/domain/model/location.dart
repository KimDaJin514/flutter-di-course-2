class Location {
  final num latitude;
  final num longitude;

  Location(this.latitude, this.longitude);
}

extension DistanceBetween on Location {
  double distanceBetween(Location other) {
    return 0.0;
  }
}