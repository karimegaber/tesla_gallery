import 'package:flutter/material.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/screens/home/home_screen.dart';

class InitialScreen extends StatelessWidget {
  static const String initialScreenRoute = '/initial';

  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.main,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/tesla.png',
              height: 200,
              width: 200,
            ),
            const Text(
              'Tesla Gallery',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: ColorsManager.white,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.homeScreenRoute);
              },
              style: ElevatedButton.styleFrom(
                primary: ColorsManager.darkYellow,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: ColorsManager.main,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Under supervision of:',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: ColorsManager.white,
              ),
            ),
            const Text(
              'Dr. Bassem Shetta',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: ColorsManager.darkYellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
