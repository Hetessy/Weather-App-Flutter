class Weather2 {
  late final String city;

  Weather2({
    required this.city,
  });
  factory Weather2.fromJson(dynamic json) {
    return Weather2(
      city: json['name'].toString(),
    );
  }
  static List<Weather2> weatherFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Weather2.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return '{"city": "$city",}';
  }
}
