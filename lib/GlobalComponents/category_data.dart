import 'package:ggraduating_project/models/kitchen_data.dart';

class CategoryData {
  String catTitle, catIcon;
  FoodType foodtype;
  CategoryData(
      {required this.catTitle,
      required this.catIcon,
      required this.foodtype,
      r});
}

List<CategoryData> catData = [
  CategoryData(
    catTitle: 'Palistinian',
    catIcon: 'images/palestine.png',
    foodtype: FoodType.Palistinian,
  ),
  CategoryData(
    catTitle: 'Italian',
    catIcon: 'images/pasta.png',
    foodtype: FoodType.Italian,
  ),
  CategoryData(
    catTitle: 'Jordinian',
    catIcon: 'images/jordan.png',
    foodtype: FoodType.Jordinian,
  ),
  CategoryData(
    catTitle: 'Chineze',
    catIcon: 'images/noodles.png',
    foodtype: FoodType.Chineze,
  ),
  CategoryData(
    catTitle: 'Gulf',
    catIcon: 'images/kanafeh.png',
    foodtype: FoodType.Gulf,
  ),
  CategoryData(
    catTitle: 'Yamani',
    catIcon: 'images/yemen.png',
    foodtype: FoodType.Yamani,
  ),
  CategoryData(
    catTitle: 'African',
    catIcon: 'images/woman.png',
    foodtype: FoodType.African,
  ),
  CategoryData(
    catTitle: 'Syrian',
    catIcon: 'images/syria.png',
    foodtype: FoodType.Syrian,
  ),
  CategoryData(
    catTitle: 'Indian',
    catIcon: 'images/curry.png',
    foodtype: FoodType.Indian,
  ),
  CategoryData(
    catTitle: 'Turkish',
    catIcon: 'images/shish-kebab.png',
    foodtype: FoodType.Turkish,
  ),
];
