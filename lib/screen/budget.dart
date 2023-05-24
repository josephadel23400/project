import 'package:flutter/material.dart';
import 'package:smart_travaller/custom/custom_text_field.dart';

class Budget_Page extends StatelessWidget {
  const Budget_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              name: 'Enter your budget',
              scure: false,
            ),
          ],
        ),
      ),
    );
  }
}
