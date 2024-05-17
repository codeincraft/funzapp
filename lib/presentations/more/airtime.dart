import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/home_screen/currency_view.dart';
import 'package:funz/presentations/more/select_network.dart';
import 'package:funz/widgets/airtime_amount.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class Airtime extends StatefulWidget {
  const Airtime({super.key});

  @override
  State<Airtime> createState() => _AirtimeState();
}

class _AirtimeState extends State<Airtime> {
  var _status = [
    'Choose a Network Service Provider',
    'MTN, Nigeria',
    'Glo, Nigeria',
    'Airtel, Nigeria',
  ];
  var _currentStatusSelected = 'Choose a Network Service Provider';

  TextEditingController controller = TextEditingController();

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
                          child: Assets.images.mtn.image(height: 33),
                        ),
                        Gap(10),
                        Text(
                          '08033980112',
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
                          child: Assets.images.glo.image(height: 30),
                        ),
                        Gap(10),
                        Text(
                          '09012938841',
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
                          child: Assets.images.airtel.image(height: 33),
                        ),
                        Gap(10),
                        Text(
                          '08058319921',
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
                height: 60,
                width: screenWidth,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                    return SelectNetworkProvider();
                  });
            },
            child: Row(
              children: [
                Text(
                  'Choose a network Service Provider',
                  style: get16TextStyle(
                      color: ColorManager.kTitleText,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
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
                  horizontal: 15,
                  vertical: 5
                ),
                decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20)),
                child: AppTextField(
                    controller: controller,
                    hintText: 'Enter Phone Number',
                    text: '',
                    obscureText: false),
              ),
              Gap(20),
              Container(
                height: 120,
                width: screenWidth,
                child: AirtimeClick(),
              ),
              Gap(20),
              Container(
                height: 50,
                width: screenWidth,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
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
              Gap(40),
              AppButton(
                onTap: () {},
                text: 'Continue',
                height: 50,
                width: screenWidth,
                borderRadius: 15,
                buttonColor: ColorManager.kbuttonColor,
                fontWeight: FontWeight.bold,
                fontsize: 17,
                textColor: ColorManager.kbackground,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      this._currentStatusSelected = newValueSelected;
    });
  }
}
