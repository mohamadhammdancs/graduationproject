// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/User.dart';
import 'package:ggraduating_project/models/dto/UpdateUserDto.dart';
import 'package:ggraduating_project/providers/InputValidator.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/home/home.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    TextEditingController _fullNameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _addressController = TextEditingController();

    return SafeArea(
      child: Scaffold(
          backgroundColor: KMainColorr,
          resizeToAvoidBottomInset: false,
          body: Consumer<InputValidator>(
            builder: (context, validator, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: const Icon(
                          Icons.arrow_back,
                          color: KDarkBlue,
                        ).onTap(() {
                          Navigator.pop(context);
                        }),
                      ),
                      Text(
                        'Edit Profile',
                        style: kTextStyle.copyWith(
                            color: KDarkBlue, fontSize: 18.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kDarkWhite),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Stack(
                          children: [
                            ClipOval(
                              child: Image(
                                image: AssetImage('images/kitchen1-01.png'),
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: CircleAvatar(
                                backgroundColor: KSecondryContrast,
                                radius: 15.0,
                                child: Icon(
                                  Icons.edit,
                                  color: KSecondryHighContrast,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: AppTextField(
                            enabled: true,
                            initialValue: userProvider.user?.fullName,
                            textFieldType: TextFieldType.NAME,
                            controller: _fullNameController,
                            decoration: InputDecoration(
                              errorText: validator.fullNameError,
                              labelText: 'Full Name',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              validator.updateFullName(value);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: AppTextField(
                            // initialValue:
                            //     userProvider.user?.phoneNumber,
                            textFieldType: TextFieldType.PHONE,
                            controller: _phoneController,
                            enabled: true,
                            onChanged: (value) {
                              validator.updatePhoneNumber(value);
                            },
                            decoration: InputDecoration(
                              errorText: validator.phoneError,
                              labelText: 'Phone Number',
                              hintText: '1767 432556',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: AppTextField(
                            enabled: true,
                            // initialValue: userProvider.user?.phoneNumber,
                            textFieldType: TextFieldType.ADDRESS,
                            controller: _addressController,
                            decoration: InputDecoration(
                              errorText: validator.addressError,
                              labelText: 'Address',
                              hintText: 'example',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              validator.updateAddress(value);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 180,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 5, 40, 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: TextStyle(fontSize: 24),
                              minimumSize: Size.fromHeight(60),
                              shape: StadiumBorder(),
                              backgroundColor: KSecondryHighContrast,
                            ),
                            onPressed: () async {
                              if (validator.fullName.isEmptyOrNull &&
                                  validator.phoneNumber.isEmptyOrNull &&
                                  validator.address.isEmptyOrNull) {
                                // all fileds are valid my man
                                UpdateUserDto updateUserDto = UpdateUserDto(
                                    userName: userProvider.user?.username,
                                    address: validator.address,
                                    fullName: validator.fullName,
                                    phoneNumber: validator.phoneNumber);
                                bool results = await userProvider
                                    .updateUser(updateUserDto);

                                if (results) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                } else {
                                  print(
                                      'an error acured while registering user');
                                }
                              }
                            },
                            child: userProvider.isLoading
                                ? CircularProgressIndicator()
                                : Text(
                                    'Submit',
                                    style: TextStyle(color: kDarkWhite),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
