
import 'package:flutter/material.dart';

class ReservationTotalPersonTabBarController extends ChangeNotifier
{
  int selectedNumber=-1;
  void selectNumber(int index)
  {
    selectedNumber=index;
    notifyListeners();
  }

  int getSelectedNumber()
  {
    return selectedNumber+1;
  }

}