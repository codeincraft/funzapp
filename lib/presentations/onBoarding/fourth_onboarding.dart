import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class FourthOnBoarding extends StatelessWidget {
  const FourthOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenHeight,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Container(
              height: 620,
              width: screenWidth,
              child: Column(
                children: [
                  Gap(30),
                 
                  Assets.images.logo1.image(),
                  Gap(50),
                  Container(
                    height: 236,
                    width: 236,
                    child: Assets.images.getloans.image()),
                  Gap(30),
                  Text('Get Loans',
                  style: get17TextStyle(
                    fontSize: 17,
                    color: ColorManager.kbuttonColor,
                  ),
                  ),
                  Text('Enjoy financial peace of mind during emergencies.', 
                  style: get14TextStyle(
                    color: ColorManager.kbuttonColor,
                    fontSize: 13
                  ),
                  ),
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}