import 'package:flutter/material.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Orders/Util/chat_model.dart';
import 'package:nb_utils/nb_utils.dart';
import 'Util/data_provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.kitchenName}) : super(key: key);
  final String kitchenName;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ScrollController scrollController = ScrollController();

  TextEditingController messageController = TextEditingController();

  FocusNode msgFocusNode = FocusNode();

  List<RiderInboxData> data = maanInboxChatDataList();

  void addMessage() {
    hideKeyboard(context);
    setState(
      () {
        data.insert(0, RiderInboxData(id: 0, message: messageController.text));
        if (mounted) scrollController.animToTop();
        FocusScope.of(context).requestFocus(msgFocusNode);
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: MediaQuery.of(context).viewInsets,
          decoration: boxDecorationWithRoundedCorners(
            backgroundColor: KSecondryContrast,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            border: Border.all(color: Colors.grey.shade100),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  width: context.width() - 100,
                  height: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.white),
                  child: Center(
                    child: AppTextField(
                      controller: messageController,
                      textFieldType: TextFieldType.OTHER,
                      focus: msgFocusNode,
                      nextFocus: msgFocusNode,
                      autoFocus: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write a reply...',
                        hintStyle: secondaryTextStyle(size: 16),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.send_rounded,
                  size: 40,
                  color: KMainColorr,
                ).paddingAll(4.0).onTap(
                  () {
                    if (messageController.text.isNotEmpty) {
                      addMessage();
                      messageController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                      leading: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: Icon(
                          Icons.arrow_back,
                          color: KDarkBlue,
                        ).onTap(() {
                          Navigator.pop(context);
                        }),
                      ),
                      title: Text(
                        widget.kitchenName,
                        style: kTextStyle.copyWith(
                            color: kTitleColor, fontSize: 18.0),
                      ),
                      trailing: Icon(
                        Icons.phone_rounded,
                        color: KSecondryHighContrast,
                      ).onTap(() {})),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
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
                        Column(
                          children: [
                            8.height,
                            Text('9:41 AM',
                                style: secondaryTextStyle(size: 16)),
                            8.height,
                            ListView.builder(
                              padding: const EdgeInsets.all(16.0),
                              controller: scrollController,
                              scrollDirection: Axis.vertical,
                              reverse: true,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                if (data[index].id == 0) {
                                  return Column(
                                    children: [
                                      8.height,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration:
                                                boxDecorationWithRoundedCorners(
                                              backgroundColor:
                                                  KSecondryContrast,
                                              borderRadius: radius(12.0),
                                            ),
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(
                                                (data[index].message)
                                                    .validate(),
                                                style: primaryTextStyle(
                                                    color: white)),
                                          ),
                                          8.width,
                                          const CircleAvatar(
                                              backgroundColor: KMainColorr,
                                              radius: 20,
                                              child: Image(
                                                image: AssetImage(
                                                    'images/logo1.png'),
                                                fit: BoxFit.cover,
                                              )),
                                        ],
                                      ),
                                    ],
                                  );
                                } else {
                                  return Column(
                                    children: [
                                      8.height,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                              backgroundColor: KMainColorr,
                                              radius: 20,
                                              child: Image(
                                                image: AssetImage(
                                                    'images/logo1.png'),
                                                fit: BoxFit.cover,
                                              )),
                                          8.width,
                                          Container(
                                            decoration:
                                                boxDecorationWithRoundedCorners(
                                              borderRadius: radius(12.0),
                                              backgroundColor: KDarkBlue,
                                            ),
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                                (data[index].message)
                                                    .validate(),
                                                style: primaryTextStyle(
                                                    color: kDarkWhite)),
                                          ).paddingOnly(right: 42.0).expand(),
                                        ],
                                      ),
                                    ],
                                  ).paddingOnly(right: 32.0);
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
