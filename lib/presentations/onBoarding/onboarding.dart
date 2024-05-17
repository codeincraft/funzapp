import 'package:flutter/material.dart';

// import 'dart:ffi';

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/presentations/onBoarding/first_onboarding.dart';
import 'package:funz/presentations/onBoarding/second_onboarding.dart';
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
              FirstOnBoarding(),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(0, 0.8),
            child: SmoothPageIndicator(
              controller: controller, 
              count: 3,
               effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  color: ColorManager.kTitleText,
                  borderRadius: BorderRadius.circular(10),
                  width: 12,
                  height: 12
                ),
                dotDecoration: DotDecoration(
                 
                  
                   width: 12,
                height: 12,
                color: Colors.transparent, // Color of the inactive dots
                borderRadius: BorderRadius.circular(6),
                dotBorder: DotBorder(
                  width: 2,
                  color: ColorManager.kborder
                ),
               ),
                        // dotColor: Color.fromARGB(255, 195, 195, 195),
                        // activeDotColor: ColorManager.kTitleText,
                        // dotHeight: 10,
                        // dotWidth: 10,
                        // strokeWidth: 2,
                        
                        spacing: 20),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn),
                  ),),
          
          //  const SizedBox(height: 10,),
          // Spacer(),
          // Container(
          //   alignment: Alignment(0, 0.90),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         GestureDetector(
          //           onTap: () {
          //             controller.jumpToPage(3);
          //           },
          //           child: const Text(
          //             'Skip',
          //             style: TextStyle(
          //               fontSize: 16,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ),
          //         // Spacer(),
          //         SizedBox(width: 100,),
          //         // page indicator controlling the bottom dots
          //         SmoothPageIndicator(
          //           controller: controller,
          //           count: 3,
          //           effect: WormEffect(
          //               dotColor: Color.fromARGB(255, 195, 195, 195),
          //               activeDotColor: ColorManager.kTitleText,
          //               dotHeight: 10,
          //               dotWidth: 10,
          //               spacing: 20),
          //           onDotClicked: (index) => controller.animateToPage(index,
          //               duration: Duration(milliseconds: 400),
          //               curve: Curves.easeIn),
          //         ),
          //         Spacer(),
          //         SizedBox(width: 30,),
          //         // Next or Done
          //         isLastPage
          //             ? GestureDetector(
          //                 onTap: () async {
          //                   final prefs = await SharedPreferences.getInstance();
          //                   prefs.setBool('showHome', true);
          //                   Navigator.pushReplacement(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (build) => FirstOnBoarding()));
          //                 },
          //                 // Done
          //                 child: const Text(
          //                   'Get Started',
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 // ),
          //               ))
          //             : GestureDetector(
          //                 onTap: () {
          //                   controller.nextPage(
          //                       duration: Duration(milliseconds: 500),
          //                       curve: Curves.easeIn);
          //                 },
          //                 // Next

          //                 child: Text(
          //                   'Next',
          //                   style: get12TextStyle(

          //                   color: 
          //                   // color.AppColor.primaryColor,
          //                   Colors.red
          //                   )
          //                   // size: 16,
          //                   // fontWeight: FontWeight.w600,
          //                 ),)
          //                 // Text('Hello',),
          //                 //  Text(
          //                 //   'Next',
          //                 //   style: TextStyle(
          //                 //     fontSize: 16,
          //                 //     fontWeight: FontWeight.bold,
          //                 //   ),
          //                 // ),
                          
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
