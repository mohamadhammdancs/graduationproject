import 'package:flutter/foundation.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';

class FavouriteKitchensProvider extends ChangeNotifier {
  List<KitchenData> _favouriteKitchens = [];

  List<KitchenData> get favouriteKitchens => _favouriteKitchens;

  bool isKitchenFavourite(KitchenData kitchen) {
    return _favouriteKitchens.contains(kitchen);
  }

  void addToFavourites(KitchenData kitchen) {
    _favouriteKitchens.add(kitchen);
    notifyListeners();
  }

  void removeFromFavourites(KitchenData kitchen) {
    _favouriteKitchens.remove(kitchen);
    notifyListeners();
  }
}
