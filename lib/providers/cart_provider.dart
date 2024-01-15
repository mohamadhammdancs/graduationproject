import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/cart_item.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';

class Cart extends ChangeNotifier {
  List<CartItem> _items = [];
  double _total_price = 0.0;
  String? selectedKitchen;

  List<CartItem> get cartItems => _items;

  void add(Dish dish, String kitchenName) {
    print(dish.dishName);
    print(kitchenName);
    if (_items.length > 0) {
      // we have items
      if (selectedKitchen != kitchenName) {
        _items.clear();
        _total_price = 0;
        addItemFirstTime(dish, kitchenName);
      } else {
        IncreaseCartitem(dish);
      }
    } else {
      // cart is empty add the Dish to the cart
      addItemFirstTime(dish, kitchenName);
    }

    print(_items.length);
    notifyListeners();
  }

  void IncreaseCartitem(Dish dish) {
    bool isFound = false;
    for (var i in _items) {
      if (i.dish.dishName == dish.dishName) {
        // add more quantity to exist cart item
        i.quantity += 1;
        isFound = true;
        _total_price = _total_price + dish.price;
        break;
      }
    }
    if (!isFound) {
      CartItem cartItem = CartItem(
          id: _items.length + 1,
          name: dish.dishName,
          price: dish.price,
          quantity: 1,
          dish: dish);

      _total_price = _total_price + dish.price;
      _items.add(cartItem);
    }
  }

  void addItemFirstTime(Dish dish, String kitchenName) {
    CartItem cartItem = CartItem(
        id: _items.length + 1,
        name: dish.dishName,
        price: dish.price,
        quantity: 1,
        dish: dish);

    _total_price = _total_price + dish.price;
    _items.add(cartItem);
    selectedKitchen = kitchenName;
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _total_price;
  }

  List<CartItem> get basketitem {
    return _items;
  }

  void addQuantity(CartItem cartItem, bool isAdd) {
    for (var i in _items) {
      if (i.id == cartItem.id) {
        // update item quanitity
        if (isAdd) {
          i.quantity += 1;
          _total_price = _total_price + i.dish.price;
        } else {
          i.quantity -= 1;
          if (i.quantity == 0) {
            _items.remove(i);
          }
          _total_price = _total_price - i.dish.price;
        }
        break;
      }
    }

    notifyListeners();
  }
}
