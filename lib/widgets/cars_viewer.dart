import 'package:flutter/material.dart';
import 'package:tesla_gallery/constants/constants.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/screens/details/details_screen.dart';

class CarsViewer extends StatelessWidget {
  const CarsViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsManager.font,
              border: Border.all(
                color: ColorsManager.font,
                width: 1,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  CarDetailsScreen.detailsScreenRoute,
                  arguments: {
                    'car': teslaCars[index],
                  },
                );
              },
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    teslaCars[index].carPictures![0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: teslaCars.length + 1,
      ),
    );
  }
}
