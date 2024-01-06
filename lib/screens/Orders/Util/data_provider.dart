import 'chat_model.dart';

List<RiderInboxData> maanInboxChatDataList() {
  List<RiderInboxData> list = [];

  list.add(RiderInboxData(id: 1, message: 'ok'));
  list.add(RiderInboxData(id: 0, message: 'its apartmant 2'));
  list.add(RiderInboxData(
      id: 1, message: 'sorry but i can\'t find your home number'));
  list.add(RiderInboxData(id: 0, message: 'ok on my way'));
  list.add(RiderInboxData(id: 1, message: 'Ihave arriverd'));
  list.add(RiderInboxData(id: 1, message: 'I am on my way to your home'));
  list.add(RiderInboxData(id: 0, message: 'Please knock on dor'));
  list.add(RiderInboxData(id: 0, message: 'I am waiting for you'));
  list.add(RiderInboxData(id: 0, message: 'Hi driver'));
  list.add(RiderInboxData(id: 1, message: 'i have already taken the order'));
  list.add(RiderInboxData(id: 1, message: 'Hi'));
  return list;
}
