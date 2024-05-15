import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class SendMoneyInternationally extends StatelessWidget {
  const SendMoneyInternationally({super.key});

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
            'Send Money',
            style: get17TextStyle(fontSize: 17),
          ),
          actions: [
            Icon(
              Icons.help_outline_outlined,
              color: ColorManager.kbuttonColor,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // Gap(40),
                //  Gap(10),
                Container(
                  height: 74,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: screenWidth,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.kborder.withOpacity(0.15),
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 74,
                        width: 133,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: ColorManager.kWhite),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  Assets.images.nigeria.path,
                                )),
                            Gap(5),
                            Text(
                              'NGN',
                              style: get17TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                      Gap(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Gap(10),
                          Text(
                            'You are sending',
                            style: get14TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            height: 30,
                            width: 180,
                            child: TextField(
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: '200,000',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: ColorManager.kTitleText,
                                ), // Customize hint text color if needed
                                border: InputBorder.none, // Remove the border
                                filled: false, // Remove background color
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                    horizontal: 0), // Adjust padding as needed
                              ),
                              keyboardType: TextInputType
                                  .number, // Set keyboard type to number
                            ),
                          ),
                          // Text('200,000', style: get17TextStyle(
                          //   fontSize: 20
                          // ),),
                        ],
                      )
                    ],
                  ),
                ),
                Gap(40),
               Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorManager.kIconBackground.withOpacity(0.2),
                    child: Icon(Icons.remove, size: 15,),
                  ),
                  Gap(10),
                  Text('No fees', style: get12TextStyle(
                    color: ColorManager.ktext,
                    fontSize: 16
                  ),)
                ],
               ),
                Gap(10),
               Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorManager.kIconBackground.withOpacity(0.2),
                    child: Icon(Icons.electric_bolt_outlined, size: 15,),
                  ),
                  Gap(10),
                  Text('Instantly', style: get12TextStyle(
                    color: ColorManager.ktext,
                    fontSize: 16
                  ),)
                ],
               ),
            Gap(100),
                AppButton(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesManager.searchForFriends);
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
                Gap(30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
