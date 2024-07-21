import 'package:flutter/material.dart';
import 'package:islami_app_c11_sun_4pm/core/application_theme_manager.dart';
import 'package:islami_app_c11_sun_4pm/layout/layout_view.dart';
import 'package:islami_app_c11_sun_4pm/modules/splash/splash_view.dart';

// 1- Read data from assets
// 2- Localization
// 3- Dark Theme
// 4- State Management (Provider)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",

      routes: {
        SplashView.routeName : (context) => const SplashView(),
        LayOutView.routeName : (context) => const LayOutView(),
      },
    );
  }
}
