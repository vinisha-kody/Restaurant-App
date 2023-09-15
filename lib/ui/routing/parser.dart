
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/ui/home/helper/home_restaurant_overview.dart';
import 'package:restaurant/ui/restaurant_details/mobile/restaurant_details_mobile.dart';
import 'package:restaurant/ui/routing/navigation_stack_keys.dart';
import 'package:restaurant/ui/routing/stack.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';

@injectable
class MainRouterInformationParser
    extends RouteInformationParser<NavigationStack> {
  WidgetRef ref;
  BuildContext context;

  MainRouterInformationParser(
      @factoryParam this.ref, @factoryParam this.context);

  @override
  Future<NavigationStack> parseRouteInformation(
      RouteInformation routeInformation) async {
    print("........URL......${routeInformation.location}");

    final Uri uri = Uri.parse(routeInformation.location ?? "");
    final queryParams = uri.queryParameters;
    final items = <NavigationStackItem>[];
    debugPrint('Stack Item Count - ${items.length}');
    //String? langStr = queryParams['lang'];

    // if (langStr != null) {
    //   await context.setLocale(Locale(langStr == "english" ? "en" : "hi"));
    // }

    for (var i = 0; i < uri.pathSegments.length; i = i + 1) {
      final key = uri.pathSegments[i];
      
      switch(key){
        case Keys.homemobile:
          items.add(const NavigationStackItem.HomeMobile());
          break;
        case Keys.restaurantdetailsmobile:
          items.add(const NavigationStackItem.RestaurantDetailsMobile(index: 0));
          break;
        case Keys.reservationmobile:
          items.add(const NavigationStackItem.ReservationMobile());
          break;
        case Keys.reservationtiming:
          items.add(const NavigationStackItem.ReservationTiming());
          break;
        case Keys.reservationform:
          items.add(const NavigationStackItem.ReservationForm());
        default:
          items.add(const NavigationStackItem.HomeMobile());
      }

    }
    if (items.isEmpty) {
      const fallback = NavigationStackItem.HomeMobile(); //NavigationStackItem.customerInfo();
      if (items.isNotEmpty && items.first is NavigationStackItemHomeMobile) {
        items[0] = fallback;
      } else {
        items.insert(0, fallback);
      }
    }
    return NavigationStack(items);
  }

  ///THIS IS IMPORTANT: Here we restore the web history
  @override
  RouteInformation restoreRouteInformation(NavigationStack configuration) {
    final location =
        configuration.items.fold<String>("", (previousValue, element) {
      return previousValue +
          element.when(
            HomeMobile: () => '/${Keys.homemobile}',
            RestaurantDetailsMobile: (index) => '/${Keys.restaurantdetailsmobile}',
            ReservationMobile: () => '/${Keys.reservationmobile}',
            ReservationTiming: () => '/${Keys.reservationtiming}'
          );
    });

    ///Return null will be stay in first route page  , if we reached first page then location will empty
    return RouteInformation(location: location);
  }
}
