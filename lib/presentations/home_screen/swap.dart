import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class SwapMoney extends StatelessWidget {
  const SwapMoney({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kbackground,
      appBar: CustomAppBar(
        title: Text('Swap Money'),
        titleTextStyle: get17TextStyle(
          fontSize: 17,
          color: ColorManager.kTitleText,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            // USD
            Container(
              height: 74,
              width: screenWidth,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorManager.kborder.withOpacity(0.15),
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 74,
                  width: 133,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: ColorManager.kWhite
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage( Assets.images.america.path,
                      
                      )
                    ),
                    Gap(5),
                    Text('USD', style: get17TextStyle(
                      fontSize: 20
                    ),),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ]
                  ,),
                ),
              Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You pay',
                  style: get12TextStyle(
                      color: ColorManager.ktext,
                      fontSize: 14,
                  ),),
                  Text('300', style: get17TextStyle(),),
                ],
              )
              ],),
            ),
            Gap(40),
            SizedBox(
              height: 140,
            child: Column(
              children: [
                // $1
                Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kIconBackground.withOpacity(0.2),
                      child: Icon(Icons.add),
                    ),
                    Gap(10),
                    Text('\$1 = N1,500.00', style: get12TextStyle(
                      color: ColorManager.ktext,
                    ),),
                  ],
                ),
                Gap(10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kIconBackground.withOpacity(0.2),
                      child: Icon(Icons.remove),
                    ),
                    Gap(10),
                    Text('Fee = 0.00',
                    style: get12TextStyle(
                      color: ColorManager.ktext,)),
                  ],
                ),
                Gap(10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kIconBackground.withOpacity(0.2),
                      child: Icon(Icons.electric_bolt_outlined),
                    ),
                    Gap(10),
                    Text('Instantly',
                    style: get12TextStyle(
                      fontSize: 12,
                      color: ColorManager.ktext,)),
                  ],
                ),
              ],
            ),
            ),
            // NGN
            Gap(20),
            Container(
              height: 74,
              width: screenWidth,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorManager.kborder.withOpacity(0.15),
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 74,
                  width: 133,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: ColorManager.kWhite
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage( Assets.images.nigeria.path,
                      
                      
                      )
                    ),
                    Gap(5),
                    Text('NGN', style: get17TextStyle(
                      fontSize: 20
                    ),),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ]
                  ,),
                ),
              Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You recieve'),
                  Text('450,000', style: get17TextStyle(),),
                ],
              )
              ],),
            ),
            Gap(60),
            AppButton(onTap: (){}, 
            text: 'Continue',
            textColor: ColorManager.kbackground,
            fontsize: 30,
            fontWeight: FontWeight.bold,
            height: 50,
            width: screenWidth,
            buttonColor: ColorManager.kbackgroundblue,
            borderRadius: 15,
            )
          ],
        ),
      ),
    );
  }
}