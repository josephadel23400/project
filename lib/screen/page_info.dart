import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/custom_button.dart';

class PlaceInfo extends StatelessWidget {
  late double price;
  late String title;
  late String description;
  late String location;
  late String image = 'images/hotel1.jpg';
  PlaceInfo(
      {required this.image,
      required this.price,
      required this.location,
      required this.description,
      required this.title});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        //borderRadius: const BorderRadiusDirectional.horizontal(
                        //  end: Radius.circular(0), start: Radius.circular(25)),
                        child: Image(
                          width: screenWidth * 1,
                          height: screenHeight * .4,
                          fit: BoxFit.fill,
                          image: AssetImage(image),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .02,
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          width: screenWidth * 1,
                          height: screenHeight * .09,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 1,
                        height: screenHeight * .2,
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Color(0xFFB3B4BA),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenHeight * .2,
                      ),
                      Container(
                        width: screenWidth * 1,
                        height: screenHeight * .1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Price:',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              price.toString(),
                              style: const TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: screenWidth * .02,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * .1,
                ),
              ],
            ),
            Positioned(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: screenHeight * .04,
                  width: screenWidth * .13,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.6),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Icon(
                    Icons.arrow_back_rounded,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * .9,
              child: CustomButton(location: location),
            ),
          ],
        ),
      ),
    );
  }
}
