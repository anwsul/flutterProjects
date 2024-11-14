class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> map) => Company(
        name: map["name"],
        catchPhrase: map["catchPhrase"],
        bs: map["bs"],
      );

  Map<String, String> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
      };
}
