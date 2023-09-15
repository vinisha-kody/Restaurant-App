

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/reservation/reservation_total_person_tab_bar_controller.dart';

final totalPersonTabBarProvider = ChangeNotifierProvider<ReservationTotalPersonTabBarController>((ref) => ReservationTotalPersonTabBarController());