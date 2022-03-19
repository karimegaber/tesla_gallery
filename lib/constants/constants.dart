import 'package:tesla_gallery/models/car_model.dart';

final List<TeslaModel> teslaCars = [
  //Model S
  TeslaModel(
    carModel: "Tesla Model S",
    carPictures: [
      'assets/images/models/model_s/s-1.jpeg',
      'assets/images/models/model_s/s-2.jpeg',
      'assets/images/models/model_s/s-3.jpeg',
      'assets/images/models/model_s/s-4.jpeg',
      'assets/images/models/model_s/s-5.jpeg',
    ],
    carSpecs: {
      'Range (EPA est.)': '396 mi',
      'Acceleration': '1.99 s 0-60 mph*',
      'Weight': '4,766 lbs',
      'Cargo': '28 cu ft',
      'Wheels': '19" or 21"',
    },
  ),
  //Model 3
  TeslaModel(
    carModel: "Tesla Model 3",
    carPictures: [
      'assets/images/models/model_3/3-1.jpeg',
      'assets/images/models/model_3/3-2.jpeg',
      'assets/images/models/model_3/3-3.jpeg',
      'assets/images/models/model_3/3-4.jpeg',
      'assets/images/models/model_3/3-5.jpeg',
    ],
    carSpecs: {
      'Battery': 'Long Range',
      'Acceleration': '3.1s 0-60 mph*',
      'Weight': '4,048 lbs',
      'Cargo': '23 cu ft',
      'Wheels': '20"',
    },
  ),
  //Model X
  TeslaModel(
    carModel: "Tesla Model X",
    carPictures: [
      'assets/images/models/model_x/x-1.jpg',
      'assets/images/models/model_x/x-2.jpg',
      'assets/images/models/model_x/x-3.jpg',
      'assets/images/models/model_x/x-4.jpg',
      'assets/images/models/model_x/x-5.jpg',
    ],
    carSpecs: {
      'Range (EPA est.)': '348 mi',
      'Acceleration': '3.8 s 0-60 mph',
      'Weight': '5,185 lbs',
      'Top Speed': '155 mph',
      'Wheels': '20" or 22"',
    },
  ),
  //Model Y
  TeslaModel(
    carModel: "Tesla Model Y",
    carPictures: [
      'assets/images/models/model_y/y-1.jpeg',
      'assets/images/models/model_y/y-2.jpeg',
      'assets/images/models/model_y/y-3.jpeg',
      'assets/images/models/model_y/y-4.jpeg',
      'assets/images/models/model_y/y-5.jpeg',
    ],
    carSpecs: {
      'Range (EPA est.)': '303 miles',
      'Acceleration': '3.5s 0-60 mph*',
      'Weight': '4,398 lbs',
      'Top Speed': '155 mph',
      'Wheels': '21"',
    },
  ),
];
