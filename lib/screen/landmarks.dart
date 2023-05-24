import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/customCard.dart';

class Landmark_Page extends StatelessWidget {
  const Landmark_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      image: 'images/1767900.jpg',
      description:
          'Al-Qamar Street, off Al-Madina Al-Munawara Street, Luxor Governorate',
      title: 'Happy land Luxor hotel',
      location:
          'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D9%87%D8%A7%D8%A8%D9%8A+%D9%84%D8%A7%D9%86%D8%AF+-+%D8%A7%D9%84%D8%A3%D9%82%D8%B5%D8%B1%E2%80%AD/@25.7067124,32.6596787,14z/data=!4m17!1m5!2m4!1z2YHZhtin2K_ZgiDZgdmKINin2YTYp9mC2LXYsQ!5m2!5m1!1s2023-05-28!3m10!1s0x1449142dac24eddb:0x60d4eec760acceb3!5m3!1s2023-05-28!4m1!1i2!8m2!3d25.6920509!4d32.6367978!15sChzZgdmG2KfYr9mCINmB2Yog2KfZhNin2YLYtdixkgEFaG90ZWzgAQA!16s%2Fg%2F1tz7r2lx',
      price: 406,
    );
  }
}
