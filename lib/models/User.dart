class User {
  String? fullName;
  String? username;
  String? email;
  String? phoneNumber;
  String? address;

  User(
      {required this.fullName,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.address});

  User.initial()
      : fullName = '',
        username = '',
        email = '',
        phoneNumber = '',
        address = '';

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['fullName'] = fullName;
    data['username'] = username;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['address'] = address;

    return data;
  }
}
