import 'package:flutter/material.dart';
import 'package:restaurant/main.dart';
import 'package:restaurant/ui/home/mobile/home_mobile.dart';

class HomeCovidDialogController extends ChangeNotifier
{
  bool isAppOpened=false;
  void updateDialogValue()
  {
    if(isAppOpened == true)
      {
        isAppOpened = false;
        notifyListeners();
      }
    else if(isAppOpened == false)
      {
        isAppOpened = true;
        notifyListeners();
      }
  }

}