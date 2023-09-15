
import 'package:flutter/material.dart';
import 'package:restaurant/ui/restaurant_details/mobile/restaurant_details_mobile.dart';

class RestaurantDetailsTabBarController extends ChangeNotifier
{
  int currentTab=0;
  void updateTabValue(index)
  {
    currentTab=index;
    notifyListeners();
  }
}