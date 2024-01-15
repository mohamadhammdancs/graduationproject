import 'package:ggraduating_project/models/cart_item.dart';


class OrderDetail {
  int id;
  List<CartItem> cartItems;
  String nameOfSeller;
  String nameOfBuyer;
  int sellerPhoneNumber;
  int buyerPhoneNumber;
  DateTime timeOfOrder;
  double totalPrice;

  // Constructor
  OrderDetail({
    required this.id,
    required this.cartItems,
    required this.nameOfSeller,
    required this.nameOfBuyer,
    required this.sellerPhoneNumber,
    required this.buyerPhoneNumber,
    required this.timeOfOrder,
    required this.totalPrice,
  });

  // Factory method to create an OrderDetail object from a map
  factory OrderDetail.fromMap(Map<String, dynamic> map) {
    return OrderDetail(
      id: map['id'],
      cartItems: (map['cartItems'] as List<dynamic>)
          .map((cartItemMap) => CartItem.fromMap(cartItemMap))
          .toList(),
      nameOfSeller: map['nameOfSeller'],
      nameOfBuyer: map['nameOfBuyer'],
      sellerPhoneNumber: map['sellerPhoneNumber'],
      buyerPhoneNumber: map['buyerPhoneNumber'],
      timeOfOrder: DateTime.parse(map['timeOfOrder']),
      totalPrice: map['totalPrice'].toDouble(),
    );
  }
}
