import 'package:IRtravel/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}





List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/cities/kish/kish-island.jpg',
    city: 'Kish Island',
    country: 'Hormozgan',
    description: 'Kish Island is one of the most-visited vacation destinations in Southwest Asia, after Dubai and Sharm el-Sheikh.',
    activities: kish_activities,
  ),
  Destination(
    imageUrl: 'assets/images/cities/rasht/masal-gilan.jpg',
    city: 'Masal',
    country: 'Gilan',
    description: 'Masal is the highest city in Gilan after Roudbar when you drive from the city for one hour, you will reach the roof of M...',
    activities: gilan_activities,
  ),
  Destination(
    imageUrl: 'assets/images/cities/yazd/yazed-desert.jpg',
    city: 'Bafgh Desert',
    country: 'Yazd',
    description: 'in the Bafgh Desert, you can experience riding camel, walking on sand hills, observing starts at night and safari among palm-groves.',
    activities: yazd_activities,
  ),
  Destination(
    imageUrl: 'assets/images/cities/isfahan/isfahan1.jpg',
    city: 'Isfahan',
    country: 'Isfahan',
    description: 'Isfahan is an important city as it is located at the intersection of the two principal north–south and east–west routes that traverse Iran. ',
    activities: isfahan_activities,
  ),
  Destination(
    imageUrl: 'assets/images/cities/tehran/tehran2.jpg',
    city: 'Tehran',
    country: 'Tehran',
    description: 'Tehrān, also spelled Teheran, the capital city of Iran and the centre of the province (ostān) of Tehrān, located in north-central Iran at the foot of the Elburz mountain range.',
    activities: tehran_activities,
  ),
  Destination(
    imageUrl: 'assets/images/cities/shiraz/hafez.jpg',
    city: 'Shiraz',
    country: 'Fars',
    description: 'Celebrated as the heartland of Persian culture for over 2000 years, Shiraz has become synonymous with education, nightingales, poetry and wine.',
    activities: shiraz_activities,
  ),
];
