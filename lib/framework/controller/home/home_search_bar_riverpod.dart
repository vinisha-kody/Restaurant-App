import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_search_bar_controller.dart';

final homeSearchBarProvider = ChangeNotifierProvider<HomeSearchBarController>((ref) => HomeSearchBarController());