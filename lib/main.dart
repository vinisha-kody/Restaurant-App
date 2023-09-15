import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant/framework/controller/dependency_injection/inject.dart';
import 'package:restaurant/ui/home/mobile/home_mobile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureMainDependencies(environment: Env.dev);
  runApp(const ProviderScope(child: HomeMobile()));
}



