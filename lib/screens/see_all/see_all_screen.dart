import 'package:flutter/material.dart';
import 'package:tesla_gallery/constants/constants.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';
import 'package:tesla_gallery/screens/details/details_screen.dart';

class SeeAllScreen extends StatelessWidget {
  static const String seeAllScreenRoute = '/see_all';

  const SeeAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.main,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Models',
          style: TextStyle(
            color: ColorsManager.darkYellow,
            fontSize: 30,

            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: GridView.builder(
          itemCount: teslaCars.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  CarDetailsScreen.detailsScreenRoute,
                  arguments: {
                    'car': teslaCars[index],
                  },
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        teslaCars[index].carPictures![0],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(teslaCars[index].carModel! + '\n', style: TextStyle(
                      fontSize: 20,
                      color: ColorsManager.darkYellow,
                      backgroundColor: Colors.black.withOpacity(0.5),
                    ),),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
