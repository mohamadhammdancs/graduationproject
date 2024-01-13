class UserRegistrationDto {
  String? fullName;
  String? username;
  String? email;
  String? password;
  String? phoneNumber;

  UserRegistrationDto({
    required this.fullName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  Map toJson() => {
        'fullName': fullName,
        'username': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password
      };
}
