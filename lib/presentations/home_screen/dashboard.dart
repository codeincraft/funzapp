import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/home_screen/card_view.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/custom_appbar_leading.dart';
import 'package:funz/widgets/debit_card.dart';
import 'package:gap/gap.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kbackground,
      appBar: CustomAppBar(
        leadingWidth: 200,
        leading: CustomAppBarLeading(
          onTap: () {},
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(Assets.images.profile.path),
                radius: 20,
                // child: SvgPicture.asset('assets/icons/profilepic.svg')
              ),
              Gap(05),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello there,'),
                    Text(
                      'Arinze Usman Ade',
                      style: get17TextStyle(
                          fontSize: 17, color: ColorManager.kTitleText),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: ColorManager.kIconBackground.withOpacity(0.3),
            child: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardView(),
                Gap(40),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        onTap: (){
                          Navigator.pushNamed(context, RoutesManager.requestMoney);;
                        }, 
                        text: 'Request',
                        height: 50,
                        width: 147,
                        borderColor: ColorManager.kborder,
                        borderRadius: 15,
                        textColor: ColorManager.ktext,
                        fontWeight: FontWeight.bold,
                        ),
                      AppButton(
                        onTap: (){
                          Navigator.pushNamed(context, RoutesManager.sendMoney);
                        }, 
                        text: 'Send',
                        height: 50,
                        width: 147,
                        buttonColor: ColorManager.kbackgroundblue,
                        borderColor: ColorManager.kborder,
                        borderRadius: 15,
                        textColor: ColorManager.kbackground,
                        fontWeight: FontWeight.bold,
                        ),
                    ],
                  ),
                ),
                Gap(40),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 278,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    border: Border.all(
                      color: ColorManager.kStroke.withOpacity(0.15),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('QUICK PAY OPTIONS'),
                      Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 80,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.phone.image()),
                                  Gap(10),
                                  Text('Airtime',
                                  style: get14TextStyle(
                                    color: ColorManager.kTitleText,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.cabletv.image()),
                                  Gap(10),
                                  Text('Cable TV',
                                  style: get14TextStyle(
                                    color: ColorManager.kTitleText,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.internent.image()),
                                  Gap(10),
                                  Text('Internet',
                                  style: get14TextStyle(
                                    color: ColorManager.kTitleText,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Second Row/////////////////////////
                      ///////////////////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 80,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.betting.image()),
                                  Gap(10),
                                  Text('Betting',
                                  style: get14TextStyle(
                                    color: ColorManager.kTitleText,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.electricity.image()),
                                  Gap(10),
                                  FittedBox(
                                    child: Text('Electricity',
                                    style: get14TextStyle(
                                      color: ColorManager.kTitleText,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 90,
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorManager.kborder.withOpacity(0.20)
                                    ),
                                    shape: BoxShape.circle,
                                    color: ColorManager.kWhite
                                  ),
                                  child: Assets.images.phone.image()),
                                  Gap(10),
                                  FittedBox(
                                    child: Text('Entertainment',
                                    style: get14TextStyle(
                                      color: ColorManager.kTitleText,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
