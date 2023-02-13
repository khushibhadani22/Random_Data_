class RanDom {
  final String gender;
  final String title;
  final String first;
  final String last;
  final String image;
  final String city;
  final String state;
  final String country;
  final String email;
  final String dobDate;
  final String registerDate;
  final String phone;
  final String cell;

  final int streetNumber;
  final int age;

  RanDom({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.dobDate,
    required this.image,
    required this.registerDate,
    required this.phone,
    required this.cell,
    required this.streetNumber,
    required this.age,
  });

  factory RanDom.fromJson({required Map json}) {
    return RanDom(
      gender: json['results'][0]['gender'],
      title: json['results'][0]['name']['title'],
      first: json['results'][0]['name']['first'],
      last: json['results'][0]['name']['last'],
      city: json['results'][0]['location']['city'],
      state: json['results'][0]['location']['state'],
      country: json['results'][0]['location']['country'],
      email: json['results'][0]['email'],
      dobDate: json['results'][0]['dob']['date'],
      registerDate: json['results'][0]['registered']['date'],
      phone: json['results'][0]['phone'],
      image: json['results'][0]['picture']['large'],
      cell: json['results'][0]['cell'],
      streetNumber: json['results'][0]['location']['street']['number'],
      age: json['results'][0]['dob']['age'],
    );
  }
}
