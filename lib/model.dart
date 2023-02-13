class RanDom {
  final String gender;
  final String title;
  final String first;
  final String last;
  final String image;

  final int streetNumber;
  final int age;

  final String city;
  final String state;
  final String country;
  final String email;
  final String dobDate;
  final String registerDate;
//  final String registerAge;
  final String phone;
  final String cell;

  RanDom({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.streetNumber,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.dobDate,
    required this.age,
    required this.image,
    required this.registerDate,
    //  required this.registerAge,
    required this.phone,
    required this.cell,
  });

  factory RanDom.fromJson({required Map json}) {
    return RanDom(
        gender: json['results'][0]['gender'],
        title: json['results'][0]['name']['title'],
        first: json['results'][0]['name']['first'],
        last: json['results'][0]['name']['last'],
        streetNumber: json['results'][0]['location']['street']['number'],
        city: json['results'][0]['location']['city'],
        state: json['results'][0]['location']['state'],
        country: json['results'][0]['location']['country'],
        email: json['results'][0]['email'],
        dobDate: json['results'][0]['dob']['date'],
        age: json['results'][0]['dob']['age'],
        registerDate: json['results'][0]['registered']['date'],
        // registerAge: json['results'][0]['registered']['age'],
        phone: json['results'][0]['phone'],
        image: json['results'][0]['picture']['large'],
        cell: json['results'][0]['cell']);
  }
}
