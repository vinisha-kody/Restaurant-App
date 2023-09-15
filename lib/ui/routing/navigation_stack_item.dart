import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'navigation_stack_item.freezed.dart';


@freezed
class NavigationStackItem with _$NavigationStackItem {
  const factory NavigationStackItem.HomeMobile() = NavigationStackItemHomeMobile;
  const factory NavigationStackItem.RestaurantDetailsMobile({required int index}) = NavigationStackItemRestaurantDetailsMobile;
  const factory NavigationStackItem.ReservationMobile() = NavigationStackItemReservationMobile;
  const factory NavigationStackItem.ReservationTiming() = NavigationStackItemReservationTiming;
  const factory NavigationStackItem.ReservationForm() = NavigationStackItemReservationForm;
}
