import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final reservationTimingDinnerTabBarProvider=ChangeNotifierProvider.autoDispose<ReservationTimingDinnerTabBarController>((ref) => ReservationTimingDinnerTabBarController(),);

class ReservationTimingDinnerTabBarController extends ChangeNotifier
{
  String selectedDinnerTime="";
  int selectedIndex=-1;

  List<String> allDinnerTimings=["7:00","7:15","7:30","7:45","8:00","8:15","8:30","8:45","9:00","9:15","9:30","9:45"];

  void getSelectedLunchTime(index)
  {
    selectedDinnerTime=allDinnerTimings.elementAt(index);
    notifyListeners();
  }

  void getSelectedIndex(index)
  {
    selectedIndex=index;
    notifyListeners();
  }

}