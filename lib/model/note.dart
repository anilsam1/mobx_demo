class Person {
  int id;
  String name;
  String city;

  Person({required this.id, required this.name, required this.city});

  factory Person.fromMap(Map<String, dynamic> json) => Person(
    id: json["id"],
    name: json["name"],
    city: json["city"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "city": city,
  };
}