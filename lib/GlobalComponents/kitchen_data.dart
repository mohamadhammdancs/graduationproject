import 'dart:collection';

class KitchenData {
  String kitchenName;
  int kitchenId;
  double kitchenRating;
  String kitchenImagePath;
  String kitchenDescription;
  List<FoodType> kitchenFoodTypes;
  List<Dish> dishes;
  KitchenData({
    required this.kitchenName,
    required this.kitchenRating,
    required this.kitchenImagePath,
    required this.kitchenDescription,
    required this.kitchenFoodTypes,
    required this.dishes,
  }) : kitchenId = HashMap.fromIterable([
              kitchenName,
              kitchenRating,
              kitchenImagePath,
              kitchenDescription
            ], key: (item) => item).length +
            1;

  toLowerCase() {}
}

class Dish {
  String dishName;
  double price;
  String imagePath;
  int noOfOrders;
  int dishId;

  Dish({
    required this.dishName,
    required this.price,
    required this.imagePath,
    required this.noOfOrders,
  }) : dishId = HashMap.fromIterable([dishName, price, imagePath, noOfOrders],
                key: (item) => item).length +
            1;
}

List<KitchenData> kitchenList = [
  KitchenData(
    kitchenName: 'Hamdan',
    kitchenRating: 4.5,
    kitchenImagePath: 'images/product1.png',
    kitchenDescription: 'hadman kitchen description...',
    kitchenFoodTypes: [FoodType.italian],
    dishes: [
      Dish(
          dishName: 'tea',
          price: 3,
          imagePath: 'images/product1.png',
          noOfOrders: 3),
      Dish(
          dishName: 'sjawerma',
          price: 2,
          imagePath: 'images/product1.png',
          noOfOrders: 5),
    ],
  ),
  KitchenData(
    kitchenName: 'khaled',
    kitchenRating: 4.0,
    kitchenImagePath: 'images/product1.png',
    kitchenDescription: 'Khaled kitchen description...',
    kitchenFoodTypes: [FoodType.american],
    dishes: [
      Dish(
          dishName: 'tea',
          price: 1,
          imagePath: 'images/product1.png',
          noOfOrders: 3),
      Dish(
          dishName: 'qwe',
          price: 2,
          imagePath: 'images/product1.png',
          noOfOrders: 2),
    ],
  ),
  KitchenData(
    kitchenName: 'ahmad',
    kitchenRating: 3.4,
    kitchenImagePath: 'images/product1.png',
    kitchenDescription: 'Ahmad kitchen description...',
    kitchenFoodTypes: [FoodType.brazilian],
    dishes: [
      Dish(
          dishName: 'ewr',
          price: 5,
          imagePath: 'images/product1.png',
          noOfOrders: 6),
      Dish(
          dishName: 'sdf',
          price: 6,
          imagePath: 'images/product1.png',
          noOfOrders: 22),
    ],
  ),
  KitchenData(
    kitchenName: 'mahmood',
    kitchenRating: 4.2,
    kitchenImagePath: 'images/product1.png',
    kitchenDescription: 'mahmood kitchen description...',
    kitchenFoodTypes: [FoodType.british],
    dishes: [
      Dish(
          dishName: 'qwe',
          price: 3,
          imagePath: 'images/product1.png',
          noOfOrders: 3),
      Dish(
          dishName: 'sjawerdfgbma',
          price: 2,
          imagePath: 'images/product1.png',
          noOfOrders: 5),
    ],
  ),
  KitchenData(
    kitchenName: 'omar',
    kitchenRating: 4.7,
    kitchenImagePath: 'images/product1.png',
    kitchenDescription: 'omar kitchen description...',
    kitchenFoodTypes: [FoodType.cajun],
    dishes: [
      Dish(
          dishName: 'bmn',
          price: 2,
          imagePath: 'images/product1.png',
          noOfOrders: 53),
      Dish(
          dishName: 'fgh',
          price: 32,
          imagePath: 'images/product1.png',
          noOfOrders: 65),
    ],
  ),
];

enum FoodType {
  american,
  asian,
  barbecue,
  brazilian,
  british,
  cafe,
  cajun,
  caribbean,
  chinese,
  chickenWings,
  cuban,
  diner,
  filipino,
  french,
  german,
  greek,
  hamburger,
  hawaiian,
  indian,
  indonesian,
  italian,
  japanese,
}
