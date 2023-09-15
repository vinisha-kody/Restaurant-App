import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_filter_controller.dart';

final homeFilterProvider = ChangeNotifierProvider<HomeFilterController>((ref) => HomeFilterController());