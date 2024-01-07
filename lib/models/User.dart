class User {
  String? name;
  String? username;
  String? email;
  String? phoneNumber;

  User(
      {required this.name,
      required this.username,
      required this.email,
      required this.phoneNumber});

  User.initial()
      : name = '',
        username = '',
        email = '',
        phoneNumber = '';

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    return data;
  }
}
