class UserRegistrationDto {
  String? name;
  String? username;
  String? email;
  String? password;

  UserRegistrationDto(
      {required this.name,
      required this.username,
      required this.email,
      required this.password});

  UserRegistrationDto.initial()
      : name = '',
        username = '',
        email = '',
        password = '';

  UserRegistrationDto.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
