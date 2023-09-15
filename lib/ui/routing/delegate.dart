import 'package:restaurant/ui/reservation/mobile/reservation_form.dart';
import 'package:restaurant/ui/reservation/mobile/reservation_mobile.dart';
import 'package:restaurant/ui/reservation/mobile/reservation_timing.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';
import 'package:restaurant/ui//routing/navigation_stack_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/ui/home/mobile/home_mobile.dart';
import 'package:restaurant/ui/restaurant_details/mobile/restaurant_details_mobile.dart';
import 'package:restaurant/ui/routing/stack.dart';


@injectable
class MainRouterDelegate extends RouterDelegate<NavigationStack>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final NavigationStack stack;

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  MainRouterDelegate(@factoryParam this.stack) : super() {
    stack.addListener(notifyListeners);
  }

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Navigator(
        key: navigatorKey,
        pages: _pages(ref),

        /// callback when a page is popped.
        onPopPage: (route, result) {
          /// let the OS handle the back press if there was nothing to pop
          if (!route.didPop(result)) {
            return false;
          }

          /// if we are on root, let OS close app
          if (stack.items.length == 1) return false;

          /// if we are on root, let OS close app
          if (stack.items.isEmpty) return false;

          /// otherwise, pop the stack and consume the event
          stack.pop();
          return true;
        },
      );
    });
  }

  List<Page> _pages(WidgetRef ref) => stack.items
      .mapIndexed((e, i) => e.when(
            HomeMobile: () => const MaterialPage(child: HomeMobilePage(),key: ValueKey(Keys.homemobile)),
            RestaurantDetailsMobile: (index) => MaterialPage(child: RestaurantDetailsMobile(index: index),key: const ValueKey(Keys.restaurantdetailsmobile)),
            ReservationMobile: () => MaterialPage(child: ReservationMobile(),key: ValueKey(Keys.reservationmobile)),
            ReservationTiming: () => MaterialPage(child: ReservationTiming(),key: ValueKey(Keys.reservationtiming)),
            ReservationForm: () => MaterialPage(child: ReservationForm(),key: ValueKey(Keys.reservationform))
          ))
      .toList();

  @override
  NavigationStack get currentConfiguration => stack;

  @override
  Future<void> setNewRoutePath(NavigationStack configuration) async {
    stack.items = configuration.items;
  }
}

extension _IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
