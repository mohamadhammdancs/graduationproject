import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';

class Cart extends ChangeNotifier {
  List<Dish> _items = [];
  double _price = 0.0;

  List<Dish> get cartItems => _items;

  void add(Dish dish) {
    _items.add(dish);
    _price += dish.price;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _price;
  }

  List<Dish> get basketitem {
    return _items;
  }

  
}
// void remove(Dish dish) {
  // final index = _items.indexWhere((item) => item == dish);
  //   if (index >= 0) {
  //     _items.removeAt(index);
  //    _price -= dish.price;
  //    notifyListeners();
  //   }
  // }

  // void updateQuantity(Dish dish, int newQuantity) {
  // final index = _items.indexWhere((item) => item == dish);
  //   if (index >= 0) {
  //     final currentPrice = _items[index].price;
  //    _price -= currentPrice * _items[index].quantity;
  //    _items[index] = dish.copyWith(quantity: newQuantity);
  //    _price += currentPrice * _items[index].quantity;
  //    notifyListeners();
  //   }
  // }

  // void clear() {
  //  _items.clear();
  //  _price = 0.0;
  //  notifyListeners();
  // }