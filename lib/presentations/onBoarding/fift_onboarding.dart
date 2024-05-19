import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class FifthOnBoardning extends StatelessWidget {
  const FifthOnBoardning({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
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
                    // Container(
                    //   height: 236,
                    //   width: 236,
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         height: 236,
                    //         width: 236,
                    //         alignment: Alignment(0, -2),
                    //         // child: Assets.images.paybillsairtime.image(),
                    //         decoration: BoxDecoration(
                    //             color: ColorManager.kpaybills,
                    //             shape: BoxShape.circle,
                    //             // image: DecorationImage(image: AssetImage(Assets.images.paybillsairtime.path)),
                    //             border: Border.all(
                    //               color: ColorManager.ktext,
                                  
                    //             )),
                    //       ),
                    //        Positioned(
                    //         left: 40,
                    //         right: 40,
                    //         top:60,
                    //       child: Assets.images.paybillsairtime.image()),
                    //        Container(
                    //         height: 236,
                    //         width: 236,
                    //         alignment: Alignment(0, -2),
                    //         // child: Assets.images.paybillsairtime.image(),
                    //         decoration: BoxDecoration(
                    //             color: Colors.transparent,
                    //             shape: BoxShape.circle,
                    //             // image: DecorationImage(image: AssetImage(Assets.images.paybillsairtime.path)),
                    //             border: Border.all(
                    //               color: ColorManager.ktext,
                                  
                    //             )),
                    //       ),

                    //     ],
                    //   ),
                    // ),
                    Container(
                      height: 236,
                      width: 236,
                      child: Assets.images.paybills.image()),
                    Gap(30),
                    Text(
                      'Pay Bills',
                      style: get17TextStyle(
                          fontSize: 17,
                          color: ColorManager.kbuttonColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(3),
                    Text(
                      'Manage and settle all your bills in one place',
                      style: get14TextStyle(
                          color: ColorManager.kbuttonColor, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
