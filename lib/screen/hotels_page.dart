import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/customCard.dart';

class Hotels_Page extends StatelessWidget {
  const Hotels_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCard(
            image: 'images/hotel1.jpg',
            description:
                'Al-Qamar Street, off Al-Madina Al-Munawara Street, Luxor Governorate',
            title: 'Happy land Luxor hotel',
            location:
                'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D9%87%D8%A7%D8%A8%D9%8A+%D9%84%D8%A7%D9%86%D8%AF+-+%D8%A7%D9%84%D8%A3%D9%82%D8%B5%D8%B1%E2%80%AD/@25.7067124,32.6596787,14z/data=!4m17!1m5!2m4!1z2YHZhtin2K_ZgiDZgdmKINin2YTYp9mC2LXYsQ!5m2!5m1!1s2023-05-28!3m10!1s0x1449142dac24eddb:0x60d4eec760acceb3!5m3!1s2023-05-28!4m1!1i2!8m2!3d25.6920509!4d32.6367978!15sChzZgdmG2KfYr9mCINmB2Yog2KfZhNin2YLYtdixkgEFaG90ZWzgAQA!16s%2Fg%2F1tz7r2lx',
            price: 406,
          ),
          CustomCard(
              image: 'images/hotel2.jpg',
              description: 'Cornish El Nile Street, Luxor Governorate',
              title: 'Aracan Eatabe Luxor Hotel',
              location:
                  '   https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D8%B1%D8%A7%D9%83%D8%A7%D9%86%E2%80%AD/@25.706638,32.6596787,14z/data=!4m20!1m8!2m7!1z2YHZhtin2K_ZgiDZgdmKINin2YTYp9mC2LXYsQ!5m4!5m3!1s2023-05-28!4m1!1i2!6e3!3m10!1s0x144915c59d17a6b5:0xfa515089a88d5330!5m3!1s2023-05-28!4m1!1i2!8m2!3d25.7051122!4d32.6430502!15sChzZgdmG2KfYr9mCINmB2Yog2KfZhNin2YLYtdixkgEFaG90ZWzgAQA!16s%2Fg%2F11j0g_q34w  ',
              price: 1314),
          CustomCard(
              image: 'images/hotel3.jpg',
              description: 'Mohamed Farid Street, Luxor',
              title: 'Bob Marley Peace Hostel',
              location:
                  'https://www.google.com/maps/place/Bob+Marley+Peace+Hostel/@25.7064891,32.6596786,14z/data=!4m14!1m3!2m2!1z2YHZhtin2K_ZgiDZgdmKINin2YTYp9mC2LXYsQ!6e3!3m9!1s0x144915cd026bb5f1:0x4f344c1fe053d916!5m2!4m1!1i2!8m2!3d25.6939307!4d32.6427305!15sChzZgdmG2KfYr9mCINmB2Yog2KfZhNin2YLYtdixkgEFaG90ZWzgAQA!16s%2Fg%2F1tf4_1kb',
              price: 497),
          CustomCard(
              image: 'images/hotel4.jpg',
              description:
                  'Khaled Ibn Al Walid, Gazirat Al Awameyah, Luxor, Luxor Governorate 1362003',
              title: 'Sonesta St. George Hotel - Luxor',
              location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%B3%D9%88%D9%86%D8%B3%D8%AA%D8%A7+%D8%B3%D8%A7%D9%86+%D8%AC%D9%88%D8%B1%D8%AC+%D8%A7%D9%84%D8%A7%D9%82%D8%B5%D8%B1%E2%80%AD/@25.706638,32.6596787,14z/data=!4m18!1m5!2m4!1z2YHZhtin2K_ZgiDZgdmKINin2YTYp9mC2LXYsQ!5m2!5m1!1s2023-05-28!3m11!1s0x144914291e2ae293:0xa1bb33e69e24c44f!5m3!1s2023-05-28!4m1!1i2!8m2!3d25.6886643!4d32.6313116!10e1!15sChzZgdmG2KfYr9mCINmB2Yog2KfZhNin2YLYtdixkgEFaG90ZWzgAQA!16s%2Fg%2F1w6ws11h',
              price: 2213),
        ],
      ),
    );
  }
}
