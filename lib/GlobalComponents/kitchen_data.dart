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
  KitchenData(
    kitchenName: 'Turkish Delights',
    kitchenRating: 4.8,
    kitchenImagePath:
        'https://www.shutterstock.com/image-photo/traditional-turkish-cuisine-pizza-pita-pidesi-1420324274', // Replace with your image path
    kitchenDescription: 'Experience the rich flavors of Turkish cuisine.',
    kitchenFoodTypes: [FoodType.Turkish],
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
            'https://www.shutterstock.com/image-photo/turkish-simit-bagels-coated-roasted-sesame-2350977173', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Manti',
        price: 10.75,
        imagePath:
            'https://www.shutterstock.com/image-photo/raw-manti-dumpling-meat-tray-herbs-2311265763', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Pide',
        price: 8.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/turkish-pide-minced-meat-name-kiymali-2018782058', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Kofte',
        price: 7.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/traditional-turkish-food-meatballs-name-akcaabat-2198389477', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Borek',
        price: 6.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/delicious-turkish-tray-pastry-su-boregi-2327224475', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Turkish Delight',
        price: 4.99,
        imagePath:
            'https://www.shutterstock.com/image-photo/various-luxury-turkish-delights-gift-box-2347081085', // Replace with your image path
        noOfOrders: 42,
      ),
      Dish(
        dishName: 'Kumpir',
        price: 11.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/kumpir-turkish-baked-potato-cheese-corn-580665805', // Replace with your image path
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
    kitchenFoodTypes: [FoodType.Yamani],
    dishes: [
      Dish(
        dishName: 'Mandi',
        price: 11.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/kabsa-cooked-meats-mandi-kabsah-saudi-2302541865', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Saltah',
        price: 9.75,
        imagePath:
            'https://www.shutterstock.com/image-photo/salta-arabic-yemeni-middle-eastern-traditional-1816553057', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Zurbian',
        price: 12.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/chicken-zurbian-madbi-mandi-arabic-food-1508629805', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Kabsa',
        price: 10.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/national-saudi-arabian-dish-chicken-kabsa-2217062817', // Replace with your image path
        noOfOrders: 50,
      ),
      Dish(
        dishName: 'Bint Al Sahn',
        price: 8.99,
        imagePath:
            'https://www.shutterstock.com/image-vector/yemeni-cuisine-bint-al-sahn-traditional-413738299', // Replace with your image path
        noOfOrders: 45,
      ),
      Dish(
        dishName: 'Aseed',
        price: 7.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/aseed-aseeda-served-dish-isolated-on-2301149701', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Harees',
        price: 9.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/hareesa-harees-arab-dish-served-isolated-2301403843', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Masoub',
        price: 7.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/yemen-sweets-mixed-bread-banana-cream-2333621745', // Replace with your image path
        noOfOrders: 75,
      ),
    ],
  ),
  KitchenData(
    kitchenName: 'Gulf Fusion',
    kitchenRating: 4.9,
    kitchenImagePath:
        'https://www.shutterstock.com/image-photo/chicken-majbous-kuwait-international-foods-magbos-1653668524', // Replace with your image path
    kitchenDescription: 'Explore the diverse Gulf cuisine.',
    kitchenFoodTypes: [FoodType.Gulf],
    dishes: [
      Dish(
        dishName: 'Machboos',
        price: 13.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/chicken-majbous-kuwait-international-foods-magbos-1653668524', // Replace with your image path
        noOfOrders: 55,
      ),
      Dish(
        dishName: 'Kuwaiti Kabsa',
        price: 11.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/top-view-kuwaiti-dining-table-ramadan-2245347017', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Emirati Harees',
        price: 12.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/hareesa-harees-arab-dish-served-isolated-2301403843', // Replace with your image path
        noOfOrders: 65,
      ),
      Dish(
        dishName: 'Saudi Kabsa',
        price: 11.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/chicken-mandy-top-view-national-saudi-2282770611', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Qatari Majboos',
        price: 9.99,
        imagePath:
            'https://www.shutterstock.com/image-photo/qatari-chicken-majboos-national-dish-bahrain-1295296915', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Bahraini Machboos',
        price: 12.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/modern-style-traditional-fried-arabic-chicken-2287768907', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Omani Shuwa',
        price: 13.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/slow-cooked-omani-lamb-shuwa-coated-2283325855', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Gulf Salad',
        price: 8.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/daqoos-daqqus-kuwaiti-gulf-arabic-tomato-2407370901', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Fahsa',
        price: 9.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/clay-pot-fried-meat-sauce-vegetables-1816553105', // Replace with your image path
        noOfOrders: 45,
      ),
      Dish(
        dishName: 'Hummus and Khubz',
        price: 6.99,
        imagePath:
            'https://www.shutterstock.com/image-photo/eggplant-hummus-spread-baba-ghanoush-187819544', // Replace with your image path
        noOfOrders: 42,
      ),
    ],
  ),
  KitchenData(
    kitchenName: 'African Spice',
    kitchenRating: 4.7,
    kitchenImagePath:
        'https://www.shutterstock.com/image-photo/midsection-biracial-woman-apron-preparing-food-2318440357', // Replace with your image path
    kitchenDescription: 'Indulge in the vibrant flavors of African cuisine.',
    kitchenFoodTypes: [FoodType.African],
    dishes: [
      Dish(
        dishName: 'Jollof Rice',
        price: 11.99,
        imagePath:
            'https://www.shutterstock.com/image-photo/jollof-rice-popular-dish-west-africa-2087420251', // Replace with your image path
        noOfOrders: 50,
      ),
      Dish(
        dishName: 'Fufu',
        price: 10.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/seafood-okra-soup-white-bowl-pounded-2002467200', // Replace with your image path
        noOfOrders: 35,
      ),
      Dish(
        dishName: 'Piri Piri Chicken',
        price: 12.25,
        imagePath:
            'YOUR_IMAhttps://www.shutterstock.com/image-photo/half-roasted-chicken-piri-served-lemon-2140306507GE_URL_HERE', // Replace with your image path
        noOfOrders: 60,
      ),
      Dish(
        dishName: 'Bunny Chow',
        price: 11.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/bunny-chow-origin-came-durban-south-2283389403', // Replace with your image path
        noOfOrders: 40,
      ),
      Dish(
        dishName: 'Bobotie',
        price: 9.99,
        imagePath:
            'https://www.shutterstock.com/image-photo/bobotie-south-african-meatloaf-minced-meat-2283388963', // Replace with your image path
        noOfOrders: 65,
      ),
      Dish(
        dishName: 'Suya',
        price: 12.5,
        imagePath:
            'https://www.shutterstock.com/image-photo/spicy-suya-kebab-vegetables-2149055067', // Replace with your image path
        noOfOrders: 48,
      ),
      Dish(
        dishName: 'Braai',
        price: 13.25,
        imagePath:
            'https://www.shutterstock.com/image-photo/south-african-braai-day-heritage-celebrating-2352285959', // Replace with your image path
        noOfOrders: 75,
      ),
      Dish(
        dishName: 'Chakalaka',
        price: 9.0,
        imagePath:
            'https://www.shutterstock.com/image-photo/south-african-vegetable-relish-side-dish-2127227417', // Replace with your image path
        noOfOrders: 30,
      ),
      Dish(
        dishName: 'Morogo',
        price: 11.5,
        imagePath:
            'https://assets.unileversolutions.com/recipes-v2/179100.jpg?im=Resize,height=372;Crop,size=(932,372),gravity=Center', // Replace with your image path
        noOfOrders: 42,
      ),
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
