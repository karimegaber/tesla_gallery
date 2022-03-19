import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tesla_gallery/models/car_model.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/resources/numerics_manager.dart';

class CarDetailsScreen extends StatelessWidget {
  static const String detailsScreenRoute = '/details';

  const CarDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final car = data['car'] as TeslaModel;
    print(car.carSpecs!.keys.toList()[0]);
    return Scaffold(
      backgroundColor: ColorsManager.main,
      appBar: AppBar(
        elevation: NumericsManager.n0,
        title: Text(
          car.carModel!,
          style: const TextStyle(
            color: ColorsManager.darkYellow,
            fontSize: 30,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ColorsManager.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorsManager.white,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    car.carPictures![itemIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.arrow_left,
                    color: ColorsManager.darkYellow,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 30,
                      color: ColorsManager.darkYellow,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: ColorsManager.darkYellow,
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 0,
                ),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 3,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: ColorsManager.white ,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            car.carSpecs!.keys.toList()[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.font,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: ColorsManager.darkYellow,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            car.carSpecs![car.carSpecs!.keys.toList()[index]],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
