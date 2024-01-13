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

 
}
