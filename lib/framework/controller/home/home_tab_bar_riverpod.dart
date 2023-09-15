import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_tab_bar_controller.dart';

final homeTabBarProvider = ChangeNotifierProvider<HomeTabBarController>((ref) => HomeTabBarController());