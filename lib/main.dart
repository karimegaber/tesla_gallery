import 'package:flutter/material.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/resources/strings_manager.dart';
import 'package:tesla_gallery/screens/details/details_screen.dart';
import 'package:tesla_gallery/screens/home/home_screen.dart';
import 'package:tesla_gallery/screens/initial/initial_screen.dart';
import 'package:tesla_gallery/screens/see_all/see_all_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsManager.appName,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: ColorsManager.main,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const InitialScreen(),
      routes: {
        InitialScreen.initialScreenRoute: (context) => const InitialScreen(),
        HomeScreen.homeScreenRoute: (context) => const HomeScreen(),
        CarDetailsScreen.detailsScreenRoute: (context) => const CarDetailsScreen(),
        SeeAllScreen.seeAllScreenRoute: (context) => const SeeAllScreen(),
      },
    );
  }
}
