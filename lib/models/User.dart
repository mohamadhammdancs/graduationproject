
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

  // Convert the User object to a map
  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
    };
  }

  // Factory constructor to create a User object from a JSON-like map
  factory User.fromJson(Map<String, dynamic> jsonMap) {
    return User(
        fullName: jsonMap['fullName'],
        username: jsonMap['username'],
        email: jsonMap['email'],
        phoneNumber: jsonMap['phoneNumber'],
        address: jsonMap['address']);
  }
}
