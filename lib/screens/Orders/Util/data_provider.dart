import 'chat_model.dart';

List<RiderInboxData> maanInboxChatDataList() {
  List<RiderInboxData> list = [];

  list.add(RiderInboxData(id: 0, message: 'ok'));
  list.add(RiderInboxData(id: 1, message: 'its apartmant 2'));
  list.add(RiderInboxData(
      id: 0, message: 'sorry but i can\'t find your home number'));
  list.add(RiderInboxData(id: 1, message: 'OK'));
  list.add(RiderInboxData(id: 0, message: 'I am on my way to your home'));

  list.add(RiderInboxData(id: 0, message: 'Hi'));
  list.add(RiderInboxData(id: 1, message: 'i preparing your order'));
  list.add(RiderInboxData(id: 1, message: 'Hi'));
  return list;
}
