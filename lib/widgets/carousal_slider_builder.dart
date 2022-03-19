import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tesla_gallery/constants/constants.dart';
import 'package:tesla_gallery/screens/details/details_screen.dart';
import 'package:tesla_gallery/widgets/carousal_item.dart';

class CarousalSliderBuilder extends StatelessWidget {
  const CarousalSliderBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: teslaCars.length,
      itemBuilder:
          (BuildContext context, int itemIndex, int pageViewIndex) =>
          CarousalItem(
            carModelName: teslaCars[itemIndex].carModel,
            carImage: teslaCars[itemIndex].carPictures![0],
            onPressedButton: () {
              Navigator.of(context).pushNamed(
                CarDetailsScreen.detailsScreenRoute,
                arguments: {
                  'car': teslaCars[itemIndex],
                },
              );
            },
          ),
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    ) ;
  }
}
