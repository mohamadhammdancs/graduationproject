
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';

class CartItem {
  int id;
  String name;
  double price;
  int quantity;
  Dish dish;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.dish,
  });

  // Method to calculate the total price of the item
  double totalPrice() {
    return price * quantity;
  }

  // Factory method to create a CartItem from a map (useful for data from databases or APIs)
  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'],
      name: map['name'],
      price: map['price'].toDouble(),
      quantity: map['quantity'],
      dish: Dish(
        dishName: map['dishName'],
        price: map['dishPrice'].toDouble(),
        imagePath: map['dishImagePath'],
        noOfOrders: map['dishNoOfOrders'],
      ),
    );
  }

  // Convert the CartItem to a map (useful for storing in databases or sending to APIs)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
      'dish': {
        'dishName': dish.dishName,
        'dishPrice': dish.price,
        'dishImagePath': dish.imagePath,
        'dishNoOfOrders': dish.noOfOrders
      }
    };
  }
}


// }void remove(Dish dish) {
//   final index = _items.indexWhere((item) => item == dish);
//     if (index >= 0) {
//       _items.removeAt(index);
//      _price -= dish.price;
//      notifyListeners();
//     }
//   }

//   void updateQuantity(Dish dish, int newQuantity) {
//   final index = _items.indexWhere((item) => item == dish);
//     if (index >= 0) {
//       final currentPrice = _items[index].price;
//      _price -= currentPrice * _items[index].quantity;
//      _items[index] = dish.copyWith(quantity: newQuantity);
//      _price += currentPrice * _items[index].quantity;
//      notifyListeners();
//     }
//   }

//   void clear() {
//    _items.clear();
//    _price = 0.0;
//    notifyListeners();
//   }