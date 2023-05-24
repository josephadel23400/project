import 'package:flutter/material.dart';
import 'package:smart_travaller/screen/budget.dart';
import 'package:smart_travaller/screen/hotels_page.dart';
import 'package:smart_travaller/screen/landmarks.dart';
import 'package:smart_travaller/screen/restaurant.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int indix = 0;
  final screens = [
    Hotels_Page(),
    Restaurant_Page(),
    Landmark_Page(),
    Budget_Page()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            child: NavigationBar(
              selectedIndex: indix,
              onDestinationSelected: (indix) =>
                  setState(() => this.indix = indix),
              destinations: [
                NavigationDestination(icon: Icon(Icons.hotel), label: 'hotels'),
                NavigationDestination(
                    icon: Icon(Icons.restaurant), label: 'restaurants'),
                NavigationDestination(
                    icon: Icon(Icons.landscape), label: 'landmarks'),
                NavigationDestination(icon: Icon(Icons.wallet), label: 'buget'),
              ],
            ),
          ),
          body: screens[indix],
        ),
      ),
    );
  }
}
