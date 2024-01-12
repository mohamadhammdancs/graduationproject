import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';

class Cart extends ChangeNotifier {
  List<Dish> items = [];
  double _price = 0.0;

 
  void add(Dish dish) {
    items.add(dish);
    _price += dish.price;
    notifyListeners();
  }

  int get count {
    return items.length;
  }

  double get totalPrice {
    return _price;
  }

  List<Dish> get basketitem {
    return items;
  }
}
