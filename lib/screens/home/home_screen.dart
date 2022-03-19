import 'package:flutter/material.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/resources/numerics_manager.dart';
import 'package:tesla_gallery/widgets/carousal_slider_builder.dart';
import 'package:tesla_gallery/widgets/cars_viewer.dart';
import 'package:tesla_gallery/widgets/viewer_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String homeScreenRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.main,
      appBar: AppBar(
        elevation: NumericsManager.n0,
        title: const Text(
          'Tesla Gallery',
          style: TextStyle(
            color: ColorsManager.darkYellow,
            fontSize: 30,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 30,
            ),

            CarousalSliderBuilder(),

            SizedBox(
              height: 20,
            ),
            //Cars Viewer Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CarsViewerTitle(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CarsViewer(),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
