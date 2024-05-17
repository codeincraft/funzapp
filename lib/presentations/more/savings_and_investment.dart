import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class SavingsAndInvestment extends StatefulWidget {
  const SavingsAndInvestment({super.key});

  @override
  State<SavingsAndInvestment> createState() => _SavingsAndInvestmentState();
}

class _SavingsAndInvestmentState extends State<SavingsAndInvestment> {
  final TextEditingController controller = TextEditingController();
  List img = [
    Assets.images.savingscard.path,
    Assets.images.savingscard2.path,
  ];
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorManager.kScaffoldB,
        appBar: CustomAppBar(
          title: Text(
            'Savings & Investments ',
            style: get17TextStyle(fontSize: 17),
          ),
          actions: [
            Icon(
              Icons.help_outline_outlined,
              color: ColorManager.kbuttonColor,
            ),
          ],
        ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kbackground,
                    border: Border.all(
                      color: ColorManager.kborder.withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Assets.images.searchIcon.image(),
                      Expanded(
                        child: AppTextField(
                            controller: controller,
                            hintText: 'Find Savings Options',
                            text: '',
                            obscureText: false),
                      ),
                    ],
                  ),
                ),
                // Gap(20),
                 Container(
                  height: 210,
                  width: screenWidth,
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Swiper(
                    viewportFraction: 0.9,
                    autoplay: false,
                    // autoplayDelay:1,
                    itemCount: img.length,
                    // slide.length,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        activeColor: ColorManager.kTitleText,
                        color: Colors.grey
                      )
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Container(
                          height:175,
                          width: 350,
                          padding: EdgeInsets.symmetric(horizontal: 10,
                          ),
                          child: Image(image: AssetImage(img[index]),
                          fit: BoxFit.contain,
                        ),
                      ));
                    },
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Column(children: [
                  SizedBox(
                    height: 153,
                    width: 163,
                    child: Assets.images.savetowards.image(),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 153,
                    width: 163,
                    child: Assets.images.saveforbusiness.image(),
                  )
                ],),
                
                Column(children: [
                  SizedBox(
                    height: 153,
                    width: 163,
                    child: Assets.images.jointsavings.image(),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 153,
                    width: 163,
                    child: Assets.images.sidelock.image(),
                  )
                ],)
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
