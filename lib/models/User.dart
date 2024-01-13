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
      required this.phoneNumber});

  // User.fromJson(Map<String, dynamic> json) {
  //   fullName = json['fullName'];
  //   username = json['userName'];
  //   email = json['email'];
  //   phoneNumber = json['phoneNumber'];
  //   address = json['address'];
  // }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullName: json['fullName'],
      username: json['userName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   data['fullName'] = fullName;
  //   data['username'] = username;
  //   data['email'] = email;
  //   data['phoneNumber'] = phoneNumber;
  //   return data;
  // }

  Map toJson() => {
        'fullName': fullName,
        'userName': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'address': address
      };
}
