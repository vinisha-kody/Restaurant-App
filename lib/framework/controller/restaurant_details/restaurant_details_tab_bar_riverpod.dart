import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/restaurant_details/restaurant_details_tab_bar_controller.dart';

final restaurantDetailsTabBarProvider = ChangeNotifierProvider<RestaurantDetailsTabBarController>((ref) => RestaurantDetailsTabBarController());