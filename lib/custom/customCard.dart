import 'package:flutter/material.dart';
import 'package:smart_travaller/screen/page_info.dart';

class CustomCard extends StatelessWidget {
  late double price;
  late String title;
  late String description;
  late String location;
  late String image;
  CustomCard(
      {required this.description,
      required this.location,
      required this.price,
      required this.title,
      required this.image});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlaceInfo(
                        image: this.image,
                        price: this.price,
                        description: this.description,
                        location: this.location,
                        title: this.title,
                      )));
        },
        child: Container(
          height: screenHeight * 0.23,
          width: screenWidth * 1,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadiusDirectional.horizontal(
                        end: Radius.circular(0), start: Radius.circular(25)),
                    child: Image(
                      width: screenWidth * .28,
                      height: screenHeight * 0.23,
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * .05,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .45,
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textWidthBasis: TextWidthBasis.parent,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .45,
                          child: Text(
                            description,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Color(0xFFB3B4BA),
                            ),
                            textWidthBasis: TextWidthBasis.parent,
                          ),
                        ),
                      ]),
                ],
              ),
              Positioned(
                top: screenHeight * .19,
                right: screenWidth * .06,
                child: Row(
                  children: [
                    const Text(
                      'Price:',
                    ),
                    Text(price.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
