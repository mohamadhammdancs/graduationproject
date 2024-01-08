

class UserRegistrationDto {
  String? name;
  String? username;
  String? email;
  String? password;
  String? phoneNumber;

  UserRegistrationDto({
    required this.name,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  // UserRegistrationDto.initial()
  //     : name = '',
  //       username = '',
  //       email = '',
  //       phoneNumber = '',
  //       password = '';

  UserRegistrationDto.fromJson(Map<String, String> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    password = json['password'];
  }

  // Map<String, String> toJson() {
  //   final Map<String, String> data = new Map<String, String>();
  //   data['name'] = "${}";
  //   data['username'] = "${this.username}";
  //   data['email'] = "${this.email}";
  //   data['phoneNumber'] = "${this.phoneNumber}";
  //   data['password'] = "${this.password}";
  //   return data;
  // }
  Map toJson() => {
        'name': this.name,
        'username': this.username,
        'email': this.email,
        'phoneNumber': this.phoneNumber,
        'password': this.password
      };
}
