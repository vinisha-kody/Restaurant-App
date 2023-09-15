import 'package:flutter/material.dart';
import 'package:restaurant/ui/home/helper/home_search_bar.dart';

class HomeSearchBarController extends ChangeNotifier
{
  bool isSearched=false;
  void updateValue()
  {
    isSearched = true;
    notifyListeners();
  }
}