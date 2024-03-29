import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/Authentication/sign_in.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Profile/edit_profile.dart';
import 'package:ggraduating_project/screens/Profile/notification_screen.dart';
import 'package:ggraduating_project/screens/Profile/wish_list.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart' as constants;
import 'package:nb_utils/nb_utils.dart';
import '../../models/User.dart';
import '../../utils/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final somingSoon = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Coming Soon ;)',
      message: 'Sorry this Function is not implemented',
      contentType: ContentType.comingSoon,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr
                  // image: DecorationImage(
                  //   image: AssetImage("images/authbg.png"),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(20.0),
                      //   child: const Icon(
                      //     Icons.arrow_back,
                      //     color: KDarkBlue,
                      //   ).onTap(() {
                      //     Navigator.pop(context);
                      //   }),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Profile',
                          style: kTextStyle.copyWith(
                              color: KDarkBlue, fontSize: 25.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Consumer<UserProvider>(
                      builder: (context, userProvider, child) {
                    User user = userProvider.user!;
                    return Container(
                      width: context.width(),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          const ClipOval(
                            child: Image(
                              width: 100,
                              height: 100,
                              image: AssetImage('images/kitchen1-01.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '${user.fullName}',
                            style: kTextStyle.copyWith(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${user.phoneNumber}',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: ListTile(
                                            onTap: () {
                                              const EditProfile()
                                                  .launch(context);
                                            },
                                            leading: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
                                              child: Icon(
                                                Icons.person_outline_rounded,
                                                color: KSecondryContrast,
                                              ),
                                            ),
                                            title: Text(
                                              'My Profile',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                            ),
                                            trailing: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: ListTile(
                                            leading: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
                                              child: Icon(
                                                Icons.payment_rounded,
                                                color: KSecondryContrast,
                                              ),
                                            ),
                                            title: Text(
                                              'Payment Settings',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                            ),
                                            trailing: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ).onTap(() {
                                        ScaffoldMessenger.of(context)
                                          ..hideCurrentSnackBar()
                                          ..showSnackBar(somingSoon);
                                      }),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: ListTile(
                                            onTap: () {
                                              const NotificationScreen()
                                                  .launch(context);
                                            },
                                            leading: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
                                              child: Icon(
                                                Icons.notifications_none,
                                                color: KSecondryContrast,
                                              ),
                                            ),
                                            title: Text(
                                              'Notification',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                            ),
                                            trailing: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: ListTile(
                                            onTap: () {
                                              const WishList().launch(context);
                                            },
                                            leading: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
                                              child: Icon(
                                                Icons.favorite_border_outlined,
                                                color: KSecondryContrast,
                                              ),
                                            ),
                                            title: Text(
                                              'Favourite',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                            ),
                                            trailing: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(10.0),
                                      //   child: Container(
                                      //     decoration: BoxDecoration(
                                      //       borderRadius:
                                      //           BorderRadius.circular(10.0),
                                      //       color: Colors.white,
                                      //     ),
                                      //     child: ListTile(
                                      //       leading: const CircleAvatar(
                                      //         backgroundColor: Color(0xFFF5F5F5),
                                      //         child: Icon(
                                      //           Icons.shopping_cart_outlined,
                                      //           color: KSecondryContrast,
                                      //         ),
                                      //       ),
                                      //       title: Text(
                                      //         'Order Tracking',
                                      //         style: kTextStyle.copyWith(
                                      //             color: kGreyTextColor),
                                      //       ),
                                      //       trailing: const Icon(
                                      //         Icons.arrow_forward_ios,
                                      //         color: kGreyTextColor,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.white,
                                          ),
                                          child: ListTile(
                                            leading: const CircleAvatar(
                                              backgroundColor:
                                                  Color(0xFFF5F5F5),
                                              child: Icon(
                                                Icons.logout,
                                                color: KSecondryContrast,
                                              ),
                                            ),
                                            title: Text(
                                              'Logout',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                            ),
                                            trailing: const Icon(
                                              Icons.arrow_forward_ios,
                                              color: kGreyTextColor,
                                            ),
                                          ),
                                        ),
                                      ).onTap(() async {
                                        SharedPreferencesUtil prefs =
                                            await SharedPreferencesUtil
                                                .getInstance();
                                        prefs.clear(constants.IS_LOGGED_IN);
                                        prefs.clear(constants.USER_INFO);
                                        prefs.clear(constants.REMMEMBER_ME);
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SignIn()),
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
