import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class RequestMoney extends StatelessWidget {
  const RequestMoney({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      appBar: CustomAppBar(
        title: Text(
          'Request Money',
          style: get17TextStyle(fontSize: 20),
        ),
        actions: [
          Icon(
            Icons.help_outline_outlined,
            color: ColorManager.kbuttonColor,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: Column(children: [
          Text(
            'Select your prefered money request option and\ncontinue',
            style: get14TextStyle(),
            textAlign: TextAlign.center,
          ),
          Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesManager.requestViaLink);
                },
                child: Container(
                  height: 174,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorManager.kTitleText),
                      color: ColorManager.kScaffoldB),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.requestLink.image(),
                      Gap(10),
                      Text(
                        'Request via link',
                        style: get17TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesManager.requestFromAFriend);
                },
                child: Container(
                  height: 174,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorManager.kTitleText),
                      color: ColorManager.kbackground),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.requestFromAFriend.image(),
                      Gap(10),
                      Text(
                        'Request from a friend',
                        style: get17TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          AppButton(
            onTap: () {
              Navigator.pushNamed(context, RoutesManager.requestMoney);
            },
            text: 'Continue',
            height: 50,
            width: screenWidth,
            borderColor: ColorManager.kborder,
            borderRadius: 15,
            buttonColor: ColorManager.kbuttonColor,
            textColor: ColorManager.kbackground,
            fontWeight: FontWeight.bold,
            fontsize: 20,
          ),
          Gap(50)
        ]),
      ),
    );
  }
}
