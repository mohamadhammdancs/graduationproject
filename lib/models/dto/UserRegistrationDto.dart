class UserRegistrationDto {
  String? fullName;
  String? userName;
  String? email;
  String? password;
  String? phoneNumber;

  UserRegistrationDto({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  Map toJson() => {
        'fullName': fullName,
        'userName': userName,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password
      };
}
