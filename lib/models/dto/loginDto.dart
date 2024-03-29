class LoginDto {
  String? username;
  String? password;

  LoginDto({
    required this.username,
    required this.password,
  });

  // LoginDto.initial()
  //     : username = '',
  //       password = '';

  LoginDto.fromJson(Map<String, String> json) {
    username = json['username'];
    password = json['password'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   data['username'] = username;
  //   data['password'] = password;
  //   return data;
  // }
  Map toJson() => {
        'username': this.username,
        'password': this.password,
      };
}
