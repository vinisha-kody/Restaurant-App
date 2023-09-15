import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/home/home_covid-dialog_controller.dart';

final homeCovidDialogProvider = ChangeNotifierProvider<HomeCovidDialogController>((ref) => HomeCovidDialogController());