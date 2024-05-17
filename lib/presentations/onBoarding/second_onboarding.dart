import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/gen/assets.gen.dart';

class SecondOnBoarding extends StatelessWidget {
  const SecondOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      body: Container(
        height: screenHeight,
        width: screenHeight,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Assets.images.logo1.image(),
              Container(
                height: screenHeight,
                color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}