class UpdateUserDto {
  String? userName;
  String? fullName;
  String? phoneNumber;
  String? address;

  UpdateUserDto(
      {required this.userName,
      required this.fullName,
      required this.phoneNumber,
      required this.address});

  UpdateUserDto.fromJson(Map<String, String> json) {
    userName = json['userName'];
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
  }
  Map toJson() => {
        'userName': this.userName,
        'fullName': this.fullName,
        'phoneNumber': this.phoneNumber,
        'address': this.address
      };
}
