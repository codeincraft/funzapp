import 'package:flutter/material.dart';

// import 'dart:ffi';

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/presentations/Authentication/signin.dart';
import 'package:funz/presentations/onBoarding/fift_onboarding.dart';
import 'package:funz/presentations/onBoarding/financial_ride.dart';
import 'package:funz/presentations/onBoarding/first_onboarding.dart';
import 'package:funz/presentations/onBoarding/fourth_onboarding.dart';
import 'package:funz/presentations/onBoarding/second_onboarding.dart';
import 'package:funz/presentations/onBoarding/third_onboarding.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  @override
  // ignore: unused_element
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  // Bool to check if you are on last page or not
  // bool isLastPage = false;
  // int index = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // controller to keep track of the onboarding pages

    return Scaffold(
      // backgroundColor: Colors.amber,

      //  color.AppColor.appColor1,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              // setState(() => isLastPage = index == 2);
            },
            children:  [
                // Container(
                //   color: Colors.amber,
                // )
              FirstOnBoarding(),
              SecondOnBoarding(),
              ThirdOnBoarding(),
              FourthOnBoarding(),
              FifthOnBoardning(),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: controller, 
              count: 5,
               effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  color: ColorManager.kbuttonColor,
                  borderRadius: BorderRadius.circular(10),
                  width: 10,
                  height: 10
                ),
                dotDecoration: DotDecoration(
                   width: 10,
                height: 10,
                color: Colors.transparent, // Color of the inactive dots
                borderRadius: BorderRadius.circular(6),
                dotBorder: DotBorder(
                  width: 1,
                  color: ColorManager.ktext
                ),
               ),
                        // dotColor: Color.fromARGB(255, 195, 195, 195),
                        // activeDotColor: ColorManager.kTitleText,
                        // dotHeight: 10,
                        // dotWidth: 10,
                        // strokeWidth: 2,
                        
                        spacing: 10),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn),
                  ),),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:  Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(
                      builder: (builder)=> FinancialRide()));
              },
              text: 'Open a new account',
              height: 50,
              width: screenWidth,
              borderColor: ColorManager.kborder,
              borderRadius: 15,
              buttonColor: ColorManager.kbuttonColor,
              textColor: ColorManager.kbackground,
              fontWeight: FontWeight.w600,
              fontsize: 15,
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?', style: get12TextStyle( 
                color: ColorManager.kbuttonColor,
                fontSize: 15),),
                Gap(5),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignIn()));
                  },
                  child: Text('Sign in', style: get12TextStyle( 
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  color: ColorManager.kbuttonColor,),),
                ),
                ],
            ),
            Gap(20),
                ],
              ),
            )),
        ],
      ),
    );
  }
}
