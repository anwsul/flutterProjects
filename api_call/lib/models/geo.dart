class Geo {
  final String lat;
  final String lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map<String, dynamic> map) =>
      Geo(lat: map["lat"], lng: map["lng"]);

  Map<String, String> toJson() => {"lat": lat, "lng": lng};
}
