import 'package:sinnonteq_test/model/toppicksmodel.dart';

class Database {
  static List<Map> servicelist = [
    {"image": "assets/images/food.png", "text": "Food"},
    {"image": "assets/images/mart.png", "text": "Mart"},
    {"image": "assets/images/health.png", "text": "Health"},
    {"image": "assets/images/pickup.png", "text": "Pickup"},
    {"image": "assets/images/cater.png", "text": "Cater"},
  ];

  static List<FoodItem> foodItems = [
    FoodItem(
      name: 'Beef Biryani',
      price: 125.0,
      rating: 4.8,
      ratingCount: 80,
      description:
          'Experience the sheer joy of Beef Biryani with juicy beef and long basmati rice.',
      imageUrl: 'https://example.com/beef_biryani.jpg',
    ),
    FoodItem(
      name: 'Chicken Biryani',
      price: 140.0,
      rating: 4.8,
      ratingCount: 80,
      description:
          'Enjoy our Chicken Biryani with tender chicken and aromatic spices.',
      imageUrl: 'https://example.com/chicken_biryani.jpg',
    ),
    // Add more food items as needed
  ];
}
