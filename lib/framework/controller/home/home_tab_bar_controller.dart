import 'package:flutter/material.dart';
import 'package:restaurant/ui/home/helper/home_tab_bar.dart';

class HomeTabBarController extends ChangeNotifier
{
  int currentTab=0;
  void updateTabValue(index)
  {
    currentTab=index;
    notifyListeners();
  }
}