

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final reservationTimingLunchTabBarProvider=ChangeNotifierProvider.autoDispose<ReservationTimingLunchTabBarController>((ref) => ReservationTimingLunchTabBarController(),);

class ReservationTimingLunchTabBarController extends ChangeNotifier
{
    String selectedLunchTime="";
    int selectedIndex=-1;

    List<String> allLunchTimings=["12:00","12:15","12:30","12:45","1:00","1:15","1:30","1:45","2:00","2:15","2:30","2:45"];

    void getSelectedLunchTime(index)
    {
      selectedLunchTime=allLunchTimings.elementAt(index);
      notifyListeners();
    }

    void getSelectedIndex(index)
    {
      selectedIndex=index;
      notifyListeners();
    }

}