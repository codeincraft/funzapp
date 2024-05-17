import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/more/betting/choose_service_provider.dart';
import 'package:funz/presentations/more/select_network.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class BettingScreen extends StatefulWidget {
  const BettingScreen({super.key});

  @override
  State<BettingScreen> createState() => _BettingScreenState();
}

class _BettingScreenState extends State<BettingScreen> {

  TextEditingController controller = TextEditingController();
  bool _switchValue = false; 
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      appBar: CustomAppBar(
        title: Text(
          'Airtime',
          style: get17TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Most Recent',
                style: get17TextStyle(
                    fontSize: 13, color: ColorManager.kTitleText),
              ),
              Gap(20),
              Row(
                children: [
                  // Airtime
                  Container(
                    height: 68,
                    width: 68,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 0.5,
                                color: ColorManager.kborder.withOpacity(0.8),
                              ),
                              color: ColorManager.kWhite),
                          child: Assets.images.sporty.image(height: 33),
                        ),
                        Gap(10),
                        Text(
                          '8068201782',
                          style: get16TextStyle(
                              fontSize: 09,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.kTitleText),
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 68,
                    width: 68,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 0.5,
                                color: ColorManager.kborder.withOpacity(0.8),
                              ),
                              color: ColorManager.kWhite),
                          child: Assets.images.onexbet.image(height: 30),
                        ),
                        Gap(10),
                        Text(
                          '172901889',
                          style: get16TextStyle(
                              fontSize: 09,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.kTitleText),
                        ),
                      ],
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 68,
                    width: 68,
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 0.5,
                                color: ColorManager.kborder.withOpacity(0.8),
                              ),
                              color: ColorManager.kWhite),
                          child: Assets.images.betnaija.image(height: 33),
                        ),
                        Gap(10),
                        Text(
                          '2210089301',
                          style: get16TextStyle(
                              fontSize: 09,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.kTitleText),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(20),
              Container(
                height: 50,
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20)),
                child:  GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  barrierColor: ColorManager.kbackgroundblue.withOpacity(0.5),
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  builder: (BuildContext context) {
                    return ChooseServiceProvider();
                  });
            },
            child: Row(
              children: [
                Text(
                  'Choose a Service Provider',
                  style: get16TextStyle(
                      // color: ColorManager.kTitleText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
              ),
               Gap(20),
              Container(
                height: 50,
                width: screenWidth,
                padding: EdgeInsets.symmetric(
                  // horizontal: 5,
                  vertical: 5
                ),
                decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20)),
                child: AppTextField(
                    controller: controller,
                    hintText: 'User ID',
                    text: '',
                    obscureText: false),
              ),
               Gap(20),
              Container(
                height: 50,
                width: screenWidth,
                padding: EdgeInsets.symmetric(
                  // horizontal: 15,
                  vertical: 5
                ),
                decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20)),
                child: AppTextField(
                    controller: controller,
                    hintText: 'Amount',
                    text: '',
                    obscureText: false),
              ),
              Gap(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Save Beneficiary'),
                          CupertinoSwitch(
                            value: _switchValue,
                            activeColor: ColorManager.kbackgroundblue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              })
                              ;
                            },
                          ),
                        ],
                      ),
                    ),
                    Gap(60),
                    AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesManager.shareReceipt);
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
              ]
              )
              )
              )
    );
  }
}