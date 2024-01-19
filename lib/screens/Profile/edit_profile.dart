// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
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
  bool isFirstTime = true;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    userProvider.getUserInfo();

    TextEditingController _fullNameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _addressController = TextEditingController();

    void _setINitialValues() {
      try {
        if (isFirstTime) {
          print('object');
          if (userProvider.user != null) {
            _fullNameController.text = userProvider.user!.fullName.toString();
            _phoneController.text = userProvider.user!.phoneNumber.toString();
            _addressController.text = userProvider.user!.address.toString();
          }
          isFirstTime = false;
        }
      } catch (ex) {
        print(ex);
      }
    }

    return SafeArea(
      child: Scaffold(
          backgroundColor: KMainColorr,
          resizeToAvoidBottomInset: false,
          body: Consumer<InputValidator>(
            builder: (context, validator, child) {
              _setINitialValues();
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
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: AppTextField(
                            enabled: true,
                            textFieldType: TextFieldType.NAME,
                            controller: _fullNameController,
                            decoration: InputDecoration(
                              errorText: validator.fullNameError,
                              labelText: 'Full Name',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              validator.updateFullName(value);
                              _fullNameController.text = value;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: AppTextField(
                            textFieldType: TextFieldType.PHONE,
                            controller: _phoneController,
                            enabled: true,
                            onChanged: (value) {
                              validator.updatePhoneNumber(value);
                              _phoneController.text = value;
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
                              _addressController.text = value;
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
                              if (!validator.fullName.isEmptyOrNull &&
                                  !validator.phoneNumber.isEmptyOrNull &&
                                  !validator.address.isEmptyOrNull) {
                                // all fileds are valid my man
                                print('valid data ');
                                userProvider.getUserInfo();
                                UpdateUserDto updateUserDto = UpdateUserDto(
                                    userName: userProvider.user?.userName,
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
                              } else {
                                print('not valid ');
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
