import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/onBoarding/enter_code.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class FinancialRide extends StatefulWidget {
  const FinancialRide({super.key});

  @override
  State<FinancialRide> createState() => _FinancialRideState();
}

class _FinancialRideState extends State<FinancialRide> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          backgroundColor: ColorManager.kScaffoldB,
          body: Container(
              height: screenHeight,
              width: screenWidth,
              // padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 394,
                      width: screenWidth,
                      child: Stack(
                        children: [
                          Assets.images.lightbackgroundrocket.image(
                              // fit: BoxFit.fill
                              ),
                          Positioned(
                            top: 50,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              height: 50,
                              width: screenWidth,
                              // color: Colors.amber,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Assets.images.cancelicon.image(),
                                  Assets.images.appIcon2.image(height: 30)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let\'s have a finanacial ride',
                            style: get17TextStyle(
                              fontSize: 17,
                              color: ColorManager.kbuttonColor,
                            ),
                          ),
                          Gap(20),

                          // Gap(10),h
                         AppTextFormField(
                          controller: controller, 
                          // hintText: hintText, 
                          text: 'Type in your email', 
                          // obscureText: obscureText
                          ),

                          // Gap(20),
                          Gap(60),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppButton(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) => EnterCode()));
                                  },
                                  text: 'Get Started',
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
                                    Text(
                                      'Already have an account?',
                                      style: get12TextStyle(
                                        color: ColorManager.kTitleText,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15
                                      ),
                                    ),
                                    Gap(5),
                                    Text(
                                      'Sign in',
                                      style: get12TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: ColorManager.kTitleText,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(20),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
