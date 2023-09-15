
import 'package:flutter/material.dart';

class HomeFilterController extends ChangeNotifier {

  double priceMinValue=15;
  double priceMaxValue=187;

  double ratingMinValue = 0;
  double ratingMaxValue = 5;

  double distanceMinValue=0;
  double distanceMaxValue=10;

  void updatePriceSlider(RangeValues values)
  {
    priceMinValue=values.start;
    priceMaxValue=values.end;
    notifyListeners();
  }

  void updateRatingSlider(RangeValues values)
  {
    ratingMinValue=values.start;
    ratingMaxValue=values.end;
    notifyListeners();
  }

  void updateDistanceSlider(RangeValues values)
  {
    distanceMinValue=values.start;
    distanceMaxValue=values.end;
    notifyListeners();
  }
}