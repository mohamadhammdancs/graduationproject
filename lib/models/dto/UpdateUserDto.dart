class UpdateUserDto {
  String? fullName;
  String? phoneNumber;
  String? address;

  UpdateUserDto(
      {required this.fullName,
      required this.phoneNumber,
      required this.address});

  UpdateUserDto.fromJson(Map<String, String> json) {
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
  }
  Map toJson() => {
        'fullName': this.fullName,
        'phoneNumber': this.phoneNumber,
        'address': this.address
      };
}
