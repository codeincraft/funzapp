import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

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
            child: Column(
              children: [
                Gap(30),
                Assets.images.logo1.image(),
                Gap(50),
                Assets.images.transactGlobally.image(),
                Gap(20),
                Text('Transact Globally',
                style: get17TextStyle(
                  fontSize: 17,
                  color: ColorManager.kTitleText,
                ),
                ),
                Text('Swap currency worldwide and transact with ease.', style: get14TextStyle(
                  color: ColorManager.kTitleText,
                  fontSize: 13
                ),),
                  Gap(30),
                    AppButton(
                      onTap: () {
                        // Navigator.pushNamed(
                        //     context, RoutesManager.shareReceipt);
                      },
                      text: 'Open a new account',
                      height: 50,
                      width: screenWidth,
                      borderColor: ColorManager.kborder,
                      borderRadius: 15,
                      buttonColor: ColorManager.kbuttonColor,
                      textColor: ColorManager.kbackground,
                      fontWeight: FontWeight.bold,
                      fontsize: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?', style: get12TextStyle( 
                        color: ColorManager.kTitleText,),),
                        Gap(5),
                        Text('Sign in', style: get12TextStyle( 
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        color: ColorManager.kTitleText,),),
                        ],
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}