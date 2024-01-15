// ignore_for_file: constant_identifier_names

import 'dart:collection';

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

class KitchenData {
  String kitchenName;
  int kitchenId;
  double kitchenRating;
  String kitchenImagePath;
  String kitchenDescription;
  FoodType kitchenFoodType;
  List<Dish> dishes;

  KitchenData({
    required this.kitchenName,
    required this.kitchenRating,
    required this.kitchenImagePath,
    required this.kitchenDescription,
    required this.kitchenFoodType,
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

  static fromMap(dishMap) {}
}
  List<KitchenData> kitchenList = [
  KitchenData(
    kitchenName: 'Kholod\'s heaven',
    kitchenRating: 5,
    kitchenImagePath:
        'https://mitsis.lk/wp-content/uploads/2021/09/IMG_6566-1-scaled.jpg',
    kitchenDescription:
        'Experience the magic of homemade palistinian cuisine, where every recipe is a celebration of culinary artistry and delightful flavors.',
    kitchenFoodType: FoodType.Palistinian,
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
    kitchenFoodType: FoodType.Indian,
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
    kitchenFoodType: FoodType.Italian,
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
    kitchenFoodType: FoodType.Chineze,
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
    kitchenFoodType: FoodType.Palistinian,
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
    kitchenFoodType: FoodType.Jordinian,
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
    kitchenFoodType: FoodType.Yamani,
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
  KitchenData(
    kitchenName: 'Turkish Delights',
    kitchenRating: 4.8,
    kitchenImagePath:
        'https://media.istockphoto.com/id/1292937799/photo/two-people-eating-traditional-turkish-food-lahmacun-and-kiymali-pide-and-kusbasili-pide.jpg?s=612x612&w=is&k=20&c=rC8BLEv8LP12f9SSsaZDb1XFmxR6i7w2mOUrq09dVy8=', // Replace with your image path
    kitchenDescription: 'Experience the rich flavors of Turkish cuisine.',
    kitchenFoodType: FoodType.Turkish,
    dishes: [
      Dish(
        dishName: 'Iskender Kebab',
        price: 12.99,
        imagePath:
            'https://ozlemsturkishtable.com/files/2015/12/IMG_5457-700x525.jpg', // Replace with your image path
        noOfOrders: 50,
      ),
      Dish(
        dishName: 'Baklava',
        price: 8.5,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEEgKQkN-Nu7V6Qxx5NR4bIwagpb673Vq8A&usqp=CAU', // Replace with your image path
        noOfOrders: 65,
      ),
      Dish(
        dishName: 'Lahmacun',
        price: 9.25,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkBGJCNV-eHmQOc1C2jseUMBSJEu_z9QIpDw&usqp=CAU', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Simit',
        price: 5.99,
        imagePath:
            'https://media.istockphoto.com/id/1360667649/photo/turkish-fast-food-bagel-called-simit-turkish-bagel-simit-with-sesame-bagel-is-traditional.jpg?s=612x612&w=0&k=20&c=olYczFJqn8qiajJiCgfsF2o-GZnunxomWeLnRUPxZNM=', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Manti',
        price: 10.75,
        imagePath:
            'https://media.istockphoto.com/id/1316874913/photo/turkish-traditional-food-ravioli-with-yoghurt-and-tomato-sauce-in-plate-manti.jpg?s=612x612&w=0&k=20&c=P219ptSWfHea7B2f0SKrKSHjz65OztZeT7JmgaHLot8=', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Pide',
        price: 8.0,
        imagePath:
            'https://media.istockphoto.com/id/1160978022/photo/turkish-pide-with-meat-on-the-board.jpg?s=612x612&w=0&k=20&c=bg8uMOJN7w41mrjvydhp5JticBA9VgNAQwsTZQIoUG0=', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Kofte',
        price: 7.25,
        imagePath:
            'https://media.istockphoto.com/id/1332171625/photo/traditional-turkish-food-turkish-meatballs-turkish-name-akcaabat-kofte.jpg?s=612x612&w=0&k=20&c=bYDGjeHuU3-hltBC9yCeqSwt0oTDOxTF19TABRlunlI=', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Borek',
        price: 6.5,
        imagePath:
            'https://media.istockphoto.com/id/1332169050/photo/turkish-tepsi-boregi-round-borek-tray-pastry.jpg?s=612x612&w=0&k=20&c=3Qa6rdeCalGn5a_HgAZypfU_WvZjWxbwNFL8Dr0YIGs=', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Turkish Delight',
        price: 4.99,
        imagePath:
            'https://media.istockphoto.com/id/1366619868/photo/colorful-delicious-tasty-traditional-turkish-delight-against-ottoman-ornamental-ceramic.jpg?s=612x612&w=0&k=20&c=EdA1jW5JqSdYmqLP64B_Z-3MEv8CqwzN6r96IO4jFXs=', // Replace with your image path
        noOfOrders: 42,
      ),
      Dish(
        dishName: 'Kumpir',
        price: 11.0,
        imagePath:
            'https://media.istockphoto.com/id/642279230/photo/kumpir-turkish-baked-potato-with-cheese-corn-sausage-ketchup-and-mayonnaise.jpg?s=612x612&w=0&k=20&c=-YCxAPePMYDCtoxWGsoDxO-RCMwO57w0odRwew9iTK0=', // Replace with your image path
        noOfOrders: 35,
      ),
    ],
  ),
  KitchenData(
    kitchenName: 'Yamani Taste',
    kitchenRating: 4.6,
    kitchenImagePath:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfELsG7em2eEkfPG92UwkkuBe1dkG2oG810g&usqp=CAU', // Replace with your image path
    kitchenDescription: 'Savor authentic Yemeni flavors.',
    kitchenFoodType: FoodType.Yamani,
    dishes: [
      Dish(
        dishName: 'Mandi',
        price: 11.0,
        imagePath:
            'https://media.istockphoto.com/id/1422594440/photo/ouzi-lamb-or-lamb-pulao-with-nuts-served-in-a-dish-side-view-isolared-on-wooden-table.jpg?s=612x612&w=0&k=20&c=KHB-3mTKdC3hh1WdjUYgYbLYP4VfaASlhMYI5IcgWbE=', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Saltah',
        price: 9.75,
        imagePath:
            'https://media.istockphoto.com/id/1129205205/photo/yemeni-lunch-of-saltah-dish-meze-plates-and-flat-bread.jpg?s=612x612&w=0&k=20&c=Fc5W-yaLDAKhv3SrAvMiT7Fllxw3xvmFPaBCZUZnHQM=', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Zurbian',
        price: 12.25,
        imagePath:
            'https://media.istockphoto.com/id/1271533769/photo/delicious-chicken-biryani-top-view-biryani-rice-dish-beautiful-indian-rice-dish-delicious.jpg?s=612x612&w=0&k=20&c=lfWZeBgJ3ppDVXqtq2GER3r2sQ23-gUfQsGAG1jleg8=', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Kabsa',
        price: 10.5,
        imagePath:
            'https://media.istockphoto.com/id/1394010517/photo/kabsa-saudi-national-dish-to-be-shared.jpg?s=612x612&w=0&k=20&c=809odIkI6lP0l8qQLrASd8jOMMQhjsSQO90KFS_eYZU=', // Replace with your image path
        noOfOrders: 50,
      ),
      Dish(
        dishName: 'Bint Al Sahn',
        price: 8.99,
        imagePath:
            'https://media.istockphoto.com/id/1463063544/photo/makarounes-traditional-food-of-karpathos.jpg?s=612x612&w=0&k=20&c=RN41gkLAYQfqQG7ghBbiGeDNzgR6Qgm8jdJznVTvGGU=', // Replace with your image path
        noOfOrders: 45,
      ),
      Dish(
        dishName: 'Aseed',
        price: 7.5,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScdYr4aR9I92036nD7e2HdYHs4Dl0pP7X6Hw&usqp=CAU', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Harees',
        price: 9.0,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv-bw4Cqd3VgWeFYtN410JczD8cZ1okMi9bg&usqp=CAU', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Masoub',
        price: 7.25,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm2UHo5n7JFffv3jkxS0LhXTGQ5FHhqA1ERQ&usqp=CAU', // Replace with your image path
        noOfOrders: 75,
      ),
    ],
  ),
  KitchenData(
    kitchenName: 'African Spice',
    kitchenRating: 4.7,
    kitchenImagePath:
        'https://media.istockphoto.com/id/1143191120/photo/traditional-moroccan-tajine-of-chicken-with-dried-fruits-and-spices.jpg?s=612x612&w=0&k=20&c=KTNBlSpeS18SGMNacLGxPbVh0MRRnlPrEKL1jJAZ-es=', // Replace with your image path
    kitchenDescription: 'Indulge in the vibrant flavors of African cuisine.',
    kitchenFoodType: FoodType.African,
    dishes: [
      Dish(
        dishName: 'Jollof Rice',
        price: 11.99,
        imagePath:
            'https://media.istockphoto.com/id/1265268905/photo/barbecue-chicken-jollof-rice.jpg?s=612x612&w=0&k=20&c=ohtrgIislco_-79g8I6AijYUJ2Yt923weh029-N7MUE=', // Replace with your image path
        noOfOrders: 50,
      ),
      Dish(
        dishName: 'Fufu',
        price: 10.5,
        imagePath:
            'https://media.istockphoto.com/id/498310978/photo/egusi-soup-and-pounded-yam-nigerian-cuisine.jpg?s=612x612&w=0&k=20&c=7TmkO_7Nx12PpXqWQpPUUWEuxjY6qX4ITdBVBFxfHuA=', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Piri Piri Chicken',
        price: 12.25,
        imagePath:
            'https://media.istockphoto.com/id/1308435603/photo/chicken.jpg?s=612x612&w=0&k=20&c=t25GBVbT6H1yDLrAT6KhoA-x7GD96fIk2U0NTqRXXug=', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Bunny Chow',
        price: 11.0,
        imagePath:
            'https://media.istockphoto.com/id/453064139/photo/bunny-chow.jpg?s=612x612&w=0&k=20&c=m4JKNbXotkESF8SiUslb49zVSWG3V-uXXwSngp30jvs=', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Bobotie',
        price: 9.99,
        imagePath:
            'https://media.istockphoto.com/id/808794002/photo/bobotie-is-a-curry-flavored-meatloaf-with-baked-egg-on-top.jpg?s=612x612&w=0&k=20&c=lSRMhoTah_jqByBTBsYm9ZLX5isFy7oBAaAVmACjUGw=', // Replace with your image path
        noOfOrders: 65,
      ),
      Dish(
        dishName: 'Suya',
        price: 12.5,
        imagePath:
            'https://media.istockphoto.com/id/1166536140/photo/nigerian-peppered-beef-suya-in-bowl.jpg?s=612x612&w=0&k=20&c=b3udSko5gtWSbMjJNhyNsS8XrKUWrw--mfC_VNd-Nic=', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Braai',
        price: 13.25,
        imagePath:
            'https://media.istockphoto.com/id/1420789767/photo/bobotie-filled-pie-pastry.jpg?s=612x612&w=0&k=20&c=SgoHBxOwM6MgRcAkNHW5b0E02mZJFWqPseuzgWTqJMY=', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Chakalaka',
        price: 9.0,
        imagePath:
            'https://media.istockphoto.com/id/1372075981/photo/traditional-chakalaka.jpg?s=612x612&w=0&k=20&c=DyRwb1OpTHL_yjTQ5B4ADhMSmVWFJ_7abBWyksoO8kU=', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Morogo',
        price: 11.5,
        imagePath:
            'https://media.istockphoto.com/id/1864518398/photo/spicy-vegetable-seasoning-chakalaka-with-carrots-baked-beans-onions-tomatoes-and-peppers.jpg?s=612x612&w=0&k=20&c=C_28Zf5jMBe7LBGKu6nBuoSGsrdwxPL4mB9wuX0biMc=', // Replace with your image path
        noOfOrders: 42,
      ),
    ],
  ),
  KitchenData(
    kitchenName: 'Gulf Fusion',
    kitchenRating: 4.9,
    kitchenImagePath:
        'https://media.istockphoto.com/id/1463063544/photo/makarounes-traditional-food-of-karpathos.jpg?s=612x612&w=0&k=20&c=RN41gkLAYQfqQG7ghBbiGeDNzgR6Qgm8jdJznVTvGGU=', // Replace with your image path
    kitchenDescription: 'Explore the diverse Gulf cuisine.',
    kitchenFoodType: FoodType.Gulf,
    dishes: [
      Dish(
        dishName: 'Machboos',
        price: 13.0,
        imagePath:
            'https://media.istockphoto.com/id/1422594440/photo/ouzi-lamb-or-lamb-pulao-with-nuts-served-in-a-dish-side-view-isolared-on-wooden-table.jpg?s=612x612&w=0&k=20&c=KHB-3mTKdC3hh1WdjUYgYbLYP4VfaASlhMYI5IcgWbE=', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Kuwaiti Kabsa',
        price: 11.5,
        imagePath:
            'https://media.istockphoto.com/id/1366619868/photo/colorful-delicious-tasty-traditional-turkish-delight-against-ottoman-ornamental-ceramic.jpg?s=612x612&w=0&k=20&c=EdA1jW5JqSdYmqLP64B_Z-3MEv8CqwzN6r96IO4jFXs=', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Emirati Harees',
        price: 12.25,
        imagePath:
            'https://media.istockphoto.com/id/1360667649/photo/turkish-fast-food-bagel-called-simit-turkish-bagel-simit-with-sesame-bagel-is-traditional.jpg?s=612x612&w=0&k=20&c=olYczFJqn8qiajJiCgfsF2o-GZnunxomWeLnRUPxZNM=', // Replace with your image path
        noOfOrders: 65,
      ),
      Dish(
        dishName: 'Saudi Kabsa',
        price: 11.0,
        imagePath:
            'https://media.istockphoto.com/id/1332169050/photo/turkish-tepsi-boregi-round-borek-tray-pastry.jpg?s=612x612&w=0&k=20&c=3Qa6rdeCalGn5a_HgAZypfU_WvZjWxbwNFL8Dr0YIGs=', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Qatari Majboos',
        price: 9.99,
        imagePath:
            'https://media.istockphoto.com/id/1160978022/photo/turkish-pide-with-meat-on-the-board.jpg?s=612x612&w=0&k=20&c=bg8uMOJN7w41mrjvydhp5JticBA9VgNAQwsTZQIoUG0=', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Bahraini Machboos',
        price: 12.5,
        imagePath:
            'https://media.istockphoto.com/id/1366619868/photo/colorful-delicious-tasty-traditional-turkish-delight-against-ottoman-ornamental-ceramic.jpg?s=612x612&w=0&k=20&c=EdA1jW5JqSdYmqLP64B_Z-3MEv8CqwzN6r96IO4jFXs=', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Omani Shuwa',
        price: 13.25,
        imagePath:
            'https://media.istockphoto.com/id/1394010517/photo/kabsa-saudi-national-dish-to-be-shared.jpg?s=612x612&w=0&k=20&c=809odIkI6lP0l8qQLrASd8jOMMQhjsSQO90KFS_eYZU=', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Gulf Salad',
        price: 8.5,
        imagePath:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm2UHo5n7JFffv3jkxS0LhXTGQ5FHhqA1ERQ&usqp=CAU', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Fahsa',
        price: 9.0,
        imagePath:
            'https://media.istockphoto.com/id/1366619868/photo/colorful-delicious-tasty-traditional-turkish-delight-against-ottoman-ornamental-ceramic.jpg?s=612x612&w=0&k=20&c=EdA1jW5JqSdYmqLP64B_Z-3MEv8CqwzN6r96IO4jFXs=', // Replace with your image path
        noOfOrders: 45,
      ),
      Dish(
        dishName: 'Hummus and Khubz',
        price: 6.99,
        imagePath:
            'https://media.istockphoto.com/id/1160233750/photo/vegan-food-plate-with-hummus-ready-to-serve.jpg?s=612x612&w=0&k=20&c=J7qTOVr_y3G_wzMWgrmym0--vKrhPzOZle0mLxczo5Q=', // Replace with your image path
        noOfOrders: 42,
      ),
    ],
  ),
];
