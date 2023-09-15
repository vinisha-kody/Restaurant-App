
import 'package:restaurant/ui/theme/assets_location.dart';

class RestaurantOverviewModel
{
  final String? restaurantImage;
  final String? restaurantName;
  final String? restaurantType;
  final double? restaurantDistance;
  final String? doller;
  final int? totalComments;
  final double? rating;

  RestaurantOverviewModel({
    required this.restaurantImage,
    required this.restaurantName,
    required this.rating,
    required this.restaurantType,
    required this.doller,
    required this.restaurantDistance,
    required this.totalComments
  });

  static List<String> aboutRestaurant= ["Good for Groups and Families",
    "Open for Lunch and Dinner",
    "Casual Dining",
    "Valet",
    "Serves Alcohol",
    "Outdoor Seating",
    "No Smoking",
    "Payment by Cash or Credit Card"
  ];

  static List<RestaurantOverviewModel> restaurants=[
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.beefimage,
        restaurantName: "Vivitalia",
        rating: 3.6,
        restaurantType: "Italian • Pizza • Asian",
        doller: r'$$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.carrotimage,
        restaurantName: "Kuriya",
        rating: 3.6,
        restaurantType: "Japanese Fine Dining",
        doller: r'$$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.foodimage,
        restaurantName: "Dolcetto by Basilico - Regent Hotel",
        rating: 3.6,
        restaurantType: "Greek",
        doller: r'$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.foodJapanese8,
        restaurantName: "OSO",
        rating: 3.6,
        restaurantType: "Italian Fine Dining",
        doller: r'$$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.foodJapanese5,
        restaurantName: "Castel Italiano",
        rating: 3.6,
        restaurantType: "Italian • Pizza • Pasta",
        doller: r'$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.foodJapanese2,
        restaurantName: "Taqueria El Farolito",
        rating: 3.6,
        restaurantType: "Mexican",
        doller: r'$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
    RestaurantOverviewModel(
        restaurantImage: AssetsLocation.foodJapanese1,
        restaurantName: "Spizza",
        rating: 3.6,
        restaurantType: "Italian • Pizza",
        doller: r'$$',
        restaurantDistance: 2.1,
        totalComments: 3
    ),
  ];
}