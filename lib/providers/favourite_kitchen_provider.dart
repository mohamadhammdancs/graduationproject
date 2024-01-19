import 'package:flutter/foundation.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';

class FavouriteKitchensProvider extends ChangeNotifier {
  List<KitchenData> _favouriteKitchens = [];

  List<KitchenData> get favouriteKitchens => _favouriteKitchens;
  bool _isFavourite = false;

  bool get isFavourite => _isFavourite;

  bool isKitchenFavourite(KitchenData kitchen) {
    return _favouriteKitchens.contains(kitchen);
  }

  void addToFavourites(KitchenData kitchen) {
    print('add');
    _favouriteKitchens.add(kitchen);

    notifyListeners();
  }

  void removeFromFavourites(KitchenData kitchen) {
    _favouriteKitchens.remove(kitchen);
    // _setfavourite(false);
    notifyListeners();
  }

  void _setfavourite(bool value) {
    _isFavourite = value;
    notifyListeners();
  }
}
