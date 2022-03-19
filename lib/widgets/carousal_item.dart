import 'package:flutter/material.dart';
import 'package:tesla_gallery/resources/colors_manager.dart';

class CarousalItem extends StatelessWidget {
  final String? carModelName;
  final String? carImage;
  final Function()? onPressedButton;

  const CarousalItem(
      {Key? key, this.carModelName, this.carImage, this.onPressedButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsManager.font,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(carImage!),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            carModelName!,
            style: const TextStyle(
              fontSize: 25,
              color: ColorsManager.white,
              fontFamily: 'Poppins',
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: ColorsManager.main,
            ),
            child: const Text(
              'View Details',
              style: TextStyle(
                fontSize: 15,
                color: ColorsManager.darkYellow,
                fontFamily: 'Poppins',
              ),
            ),
            //style:  ,
            onPressed: onPressedButton,
          ),
        ],
      ),
    );
  }
}
