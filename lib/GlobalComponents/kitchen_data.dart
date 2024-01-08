// ignore_for_file: constant_identifier_names

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
    kitchenName: 'Kholod\'s heaven',
    kitchenRating: 5,
    kitchenImagePath:
        'https://mitsis.lk/wp-content/uploads/2021/09/IMG_6566-1-scaled.jpg',
    kitchenDescription:
        'Experience the magic of homemade palistinian cuisine, where every recipe is a celebration of culinary artistry and delightful flavors.',
    kitchenFoodTypes: [FoodType.Palistinian],
    dishes: [
      Dish(
          dishName: 'maqloobeh',
          price: 3.5,
          imagePath: 'https://i.ytimg.com/vi/rEzF8gbxGoQ/maxresdefault.jpg',
          noOfOrders: 91),
      Dish(
          dishName: 'Mjadaraha',
          price: 2.0,
          imagePath:
              'https://assets.bonappetit.com/photos/5ddd7f2c0aca3a000a24ce7f/1:1/w_2560%2Cc_limit/Basically-Mujadara-Platter.jpg',
          noOfOrders: 12),
      Dish(
          dishName: 'Bamyeh',
          price: 2.5,
          imagePath:
              'https://zaatarandzaytoun.com/wp-content/uploads/2019/01/bamia-3-1024x680.jpg',
          noOfOrders: 40),
      Dish(
          dishName: 'Mlokheye',
          price: 3,
          imagePath:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVRYmTU2mDUCcME_otQIJT9LfOcNPScrRF_A&usqp=CAU',
          noOfOrders: 93),
    ],
  ),
  KitchenData(
    kitchenName: 'Jamal Indian Kitchen',
    kitchenRating: 4.7,
    kitchenImagePath:
        'https://t3.ftcdn.net/jpg/02/57/21/40/360_F_257214005_63auIfr9KN0gTHt28w6G8hoP2k45ScyP.jpg',
    kitchenDescription:
        'Crafting homemade delights with love and care, offering a delicious array of flavors that redefine home-cooked goodness.',
    kitchenFoodTypes: [FoodType.Indian],
    dishes: [
      Dish(
          dishName: 'Naan',
          price: 2,
          imagePath:
              'https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750,f_auto/ChefKatie-561-phpDEMb5I',
          noOfOrders: 12),
      Dish(
          dishName: 'Paratha',
          price: 1.5,
          imagePath:
              'https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750,f_auto/3-paratha-canva-phpCTUMcP',
          noOfOrders: 65),
      Dish(
          dishName: 'Matar Kulcha',
          price: 2.5,
          imagePath:
              'https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750,f_auto/11-matar-kulcha-canva-phpiqTrzB',
          noOfOrders: 23),
      Dish(
          dishName: 'Kathi Rolls',
          price: 3.5,
          imagePath:
              'https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750,f_auto/15-kathi-rolls-canva-phpE9mepi',
          noOfOrders: 26),
    ],
  ),
  KitchenData(
    kitchenName: 'Khadija Pasta Paradise',
    kitchenRating: 4.7,
    kitchenImagePath:
        'https://cdn.pixabay.com/photo/2016/11/23/18/31/pasta-1854245_1280.jpg',
    kitchenDescription:
        'Passionate home cook crafting delectable dishes with a fusion of flavors, delivering homemade goodness straight to your doorstep.',
    kitchenFoodTypes: [FoodType.Italian],
    dishes: [
      Dish(
          dishName: 'Polenta',
          price: 2.5,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/polenta-1643401533.webp',
          noOfOrders: 12),
      Dish(
          dishName: 'Ribollita',
          price: 2,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/ribollita-1643401533.webp',
          noOfOrders: 54),
      Dish(
          dishName: 'Risotto alla Milanese',
          price: 2.5,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/risotto-alla-milanese-1643401533.webp',
          noOfOrders: 25),
      Dish(
          dishName: 'Cotoletta alla Milanese',
          price: 3,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/cotoletta-alla-milanese-1643401533.webp',
          noOfOrders: 82),
      Dish(
          dishName: 'Vitello Tonnato',
          price: 4,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/vitello-tonnato-1643401533.webp',
          noOfOrders: 72),
    ],
  ),
  KitchenData(
    kitchenName: 'Ahmed Home Cooking',
    kitchenRating: 4.5,
    kitchenImagePath:
        'https://media.istockphoto.com/id/545286388/photo/chinese-food-blank-background.jpg?s=612x612&w=0&k=20&c=pqOIy07YKO5PlU5VxjscwTGRrrZ8PluKMUjSOz-II60=',
    kitchenDescription:
        'Elevating home cooking with a blend of tradition and creativity, serving up savory indulgences that speak to the heart.',
    kitchenFoodTypes: [FoodType.Chineze],
    dishes: [
      Dish(
          dishName: 'Xiao long bao',
          price: 2,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/xiao-long-bao-1643997685.webp',
          noOfOrders: 83),
      Dish(
          dishName: 'Peking duck',
          price: 4,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/peking-duck-1643997685.webp',
          noOfOrders: 91),
      Dish(
          dishName: 'Jianbing',
          price: 2,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/jianbing-1643997685.webp',
          noOfOrders: 124),
      Dish(
          dishName: 'Tang yuan',
          price: 1.5,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/tang-yuan-1643997685.webp',
          noOfOrders: 20),
      Dish(
          dishName: 'Congee',
          price: 3,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/congee-1643997685.webp',
          noOfOrders: 3),
      Dish(
          dishName: 'Biang biang noodles',
          price: 3,
          imagePath:
              'https://www.tastingtable.com/img/gallery/20-chinese-foods-you-need-to-try-at-least-once/biang-biang-noodles-1643997685.webp',
          noOfOrders: 23),
    ],
  ),
  KitchenData(
    kitchenName: 'Noor Kitchen',
    kitchenRating: 5,
    kitchenImagePath:
        'https://media.istockphoto.com/id/1175505781/photo/arabic-and-middle-eastern-dinner-table-hummus-tabbouleh-salad-fattoush-salad-pita-meat-kebab.jpg?s=612x612&w=0&k=20&c=N4PkdbA7Bf-WNKf2VRNz9mtZP4sxrdcsMwZ7P981ZIY=',
    kitchenDescription:
        'Bringing the warmth of home-cooked meals to your table, curated with precision and an unwavering commitment to taste.',
    kitchenFoodTypes: [FoodType.Palistinian],
    dishes: [
      Dish(
          dishName: 'Freekeh',
          price: 2,
          imagePath:
              'https://www.lacademie.com/wp-content/uploads/2022/03/freekeh-green-wheat.webp',
          noOfOrders: 67),
      Dish(
          dishName: 'Musakhan',
          price: 3,
          imagePath:
              'https://www.lacademie.com/wp-content/uploads/2022/03/musakhan-sumac-chicken.webp',
          noOfOrders: 62),
      Dish(
          dishName: 'Shish Barak',
          price: 2.5,
          imagePath:
              'https://www.lacademie.com/wp-content/uploads/2022/03/shish-barak.webp',
          noOfOrders: 91),
      Dish(
          dishName: 'Qidreh ',
          price: 4,
          imagePath:
              'https://www.lacademie.com/wp-content/uploads/2022/03/qidreh-chickpeas.webp',
          noOfOrders: 104),
      Dish(
          dishName: 'Maftoul Maftoul',
          price: 3,
          imagePath:
              'https://www.lacademie.com/wp-content/uploads/2022/03/maftoul-palestinian-couscous.webp',
          noOfOrders: 999),
    ],
  ),
  KitchenData(
    kitchenName: 'Farah Food',
    kitchenRating: 4.6,
    kitchenImagePath:
        'https://media.istockphoto.com/id/1207392899/photo/mansaf.jpg?s=612x612&w=0&k=20&c=CPxBf1YD95S5Wplbzr8oHuGkVBEMYnXFIztCUoyNDLE=',
    kitchenDescription:
        'From my kitchen to your plate, savor the authenticity of homemade meals made with a dash of love and a sprinkle of expertise.',
    kitchenFoodTypes: [FoodType.Jordinian],
    dishes: [
      Dish(
          dishName: 'Mansaf',
          price: 4,
          imagePath:
              'https://nebotours.com/wp-content/uploads/2021/12/blog-mansaf.jpg',
          noOfOrders: 300),
      Dish(
          dishName: 'Zarb',
          price: 3.5,
          imagePath:
              'https://nebotours.com/wp-content/uploads/2021/12/blog-zarb.jpg',
          noOfOrders: 23),
      Dish(
          dishName: 'Sayadieh',
          price: 4,
          imagePath:
              'https://nebotours.com/wp-content/uploads/2021/12/blog-sayadieh.jpg',
          noOfOrders: 62),
      Dish(
          dishName: 'Hummus & Falafel',
          price: 3,
          imagePath:
              'https://nebotours.com/wp-content/uploads/2021/12/blog-hummus.jpg',
          noOfOrders: 421),
      Dish(
          dishName: 'Shawerma',
          price: 3,
          imagePath:
              'https://nebotours.com/wp-content/uploads/2021/12/blog-shawerma.jpg',
          noOfOrders: 999),
    ],
  ),
  KitchenData(
    kitchenName: 'Samir Home Creations',
    kitchenRating: 4.7,
    kitchenImagePath:
        'https://media-cdn.tripadvisor.com/media/photo-s/16/de/d8/5d/yemen-street-restaurant.jpg',
    kitchenDescription:
        'From my kitchen to your plate, savor the authenticity of homemade meals made with a dash of love and a sprinkle of expertise.',
    kitchenFoodTypes: [FoodType.Yamani],
    dishes: [
      Dish(
          dishName: 'Fahsa',
          price: 2,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Fahsa-960x720.jpg.webp',
          noOfOrders: 12),
      Dish(
          dishName: 'Saltah',
          price: 3,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Saltah-960x960.jpg.webp',
          noOfOrders: 23),
      Dish(
          dishName: 'Zurbian',
          price: 2.5,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Zurbian-960x540.jpg.webp',
          noOfOrders: 53),
      Dish(
          dishName: 'Mutabaq',
          price: 1.5,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Mutabaq.jpg.webp',
          noOfOrders: 63),
      Dish(
          dishName: 'Mandi ',
          price: 5,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Mandi--960x960.jpg.webp',
          noOfOrders: 70),
      Dish(
          dishName: 'Fattout',
          price: 3,
          imagePath:
              'https://www.chefspencil.com/wp-content/uploads/Fattout.png',
          noOfOrders: 92),
    ],
  ),
];

enum FoodType {
  Palistinian,
  Syrian,
  Jordinian,
  Gulf,
  Yamani,
  African,
  Italian,
  Chineze,
  Indian,
  Turkish,
}
