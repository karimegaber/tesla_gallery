import 'package:flutter/material.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/screens/see_all/see_all_screen.dart';

class CarsViewerTitle extends StatelessWidget {
  const CarsViewerTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '\t TESLA Vehicles',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: ColorsManager.white,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SeeAllScreen.seeAllScreenRoute);
            },
            child: const Text(
              'See all',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: ColorsManager.darkYellow,
              ),
            )),
      ],
    );
  }
}
