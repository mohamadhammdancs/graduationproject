class User {
  String? fullName;
  String? userName;
  String? email;
  String? phoneNumber;
  String? address;

  User(
      {required this.fullName,
      required this.userName,
      required this.email,
      required this.phoneNumber,
      required this.address});

  // Convert the User object to a map
  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
    };
  }

  // Factory constructor to create a User object from a JSON-like map
  factory User.fromJson(Map<String, dynamic> jsonMap) {
    return User(
        fullName: jsonMap['fullName'],
        userName: jsonMap['userName'],
        email: jsonMap['email'],
        phoneNumber: jsonMap['phoneNumber'],
        address: jsonMap['address']);
  }
}
