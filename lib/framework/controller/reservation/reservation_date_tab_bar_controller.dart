
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final reservationDateTabProvider=ChangeNotifierProvider<ReservationDateTabBarController>((ref) => ReservationDateTabBarController());


class ReservationDateTabBarController extends ChangeNotifier
{

  DateTime now=DateTime.now();
  String currentMonth = '';
  String nextMonth = '';
  String selectedDay=(DateFormat.E().format(DateTime.now())).toString();
  String selectedDate=(DateFormat.d().format(DateTime.now())).toString();
  String selectedMonth=(DateFormat.MMM().format(DateTime.now())).toString();
  int indexOfCurrentMonth=0;
  int indexOfNextMonth=-1;

  void getCurrentIndex(index)
  {
    indexOfCurrentMonth=index;
    notifyListeners();
  }

  void getIndexOfMonth(index,month)
  {
    if(month == getCurrentMonth())
      {
        indexOfCurrentMonth=index;
        indexOfNextMonth=-1;
        notifyListeners();
      }
    else
      {
        indexOfNextMonth=index;
        indexOfCurrentMonth=-1;
        notifyListeners();
      }
  }

  String getCurrentMonth()
  {
    currentMonth = (DateFormat.MMM().format(DateTime(now.year,now.month))).toString();
    return currentMonth;
  }

  String getNextMonth()
  {
    nextMonth=(DateFormat('MMM').format(DateTime(now.year,now.month+1))).toString();
    return nextMonth;
  }

  int getAllDaysOfMonthFromCurrentDate()
  {
    DateTime lastDayOfMonth = DateTime(now.year,now.month+1,0);
    int currentDayOfMonth = now.day;
    return(lastDayOfMonth.day-currentDayOfMonth)+1;
  }

  int getAllDaysTillCurrentDate()
  {
    return (now.day)-1;
  }

  String getAllDaysOfCurrentMonth(index)
  {
    DateTime day=now.add(Duration(days: index));
    return day.day.toString();
  }

  String getAllDaysOfNextMonth(index)
  {
    DateTime firstDayOfMonth=DateTime(now.year,now.month+1,1);
    DateTime day=firstDayOfMonth.add(Duration(days: index));
    return day.day.toString();
  }

  String getSelectedDay(index,month)
  {
    if(currentMonth == month)
      {
        DateTime day=now.add(Duration(days: index));
        selectedDay=(DateFormat.E().format(day)).toString();
        notifyListeners();
        return selectedDay;
      }
    else
      {
        DateTime nextMonth=DateTime(now.year,now.month+1);
        DateTime day=nextMonth.add(Duration(days: index));
        selectedDay=(DateFormat.E().format(day)).toString();
        notifyListeners();
        return selectedDay;
      }
  }

  String getSelectedDate(index,month)
  {
    if(currentMonth == month)
      {
        DateTime day=now.add(Duration(days: index));
        selectedDate=(DateFormat.d().format(day)).toString();
        notifyListeners();
        return selectedDate;
      }
    else
      {
        DateTime nextMonth=DateTime(now.year,now.month+1);
        DateTime day=nextMonth.add(Duration(days: index));
        selectedDate=(DateFormat.d().format(day)).toString();
        notifyListeners();
        return selectedDate;
      }
  }

  String getSelectedMonth(month)
  {
    selectedMonth=month;
    notifyListeners();
    return selectedMonth;
  }

  void getDayAbbreviation()
  {

  }

}