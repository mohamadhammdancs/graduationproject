import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';

class CartitemAdd extends ChangeNotifier {
  List<Dish> cartItems = List.empty(growable: true);
  void AddItemToCart(Dish dish) {
    cartItems.add(dish);
    notifyListeners();
  }
}
