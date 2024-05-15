import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/success_icon.dart';
import 'package:gap/gap.dart';

class ShareReceipt extends StatelessWidget {
  const ShareReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
        // appBar: CustomAppBar(
        //   // title: Text(
        //   //   'Send Money',
        //   //   style: get17TextStyle(fontSize: 20),
        //   // ),
        //   // actions: [
        //   //   Icon(
        //   //     Icons.help_outline_outlined,
        //   //     color: ColorManager.kbuttonColor,
        //   //   ),
        //   // ],
        // ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              Gap(50),
              Container(
                height: 500,
                width: screenWidth,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 451,
                        width: screenWidth,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: ColorManager.kbackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Gap(50),
                            Text('Money Successfully Sent', style: get17TextStyle(
                              fontSize: 13,
                              color: ColorManager.kbuttonColor
                            ),),
                            Gap(10),
                            Text('N720,000.00', style: get17TextStyle(
                              fontSize: 25,
                              color: ColorManager.kTitleText
                            ),),
                            Gap(20),
                            // Sender
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sender:', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('Arinze Usman Ade', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Funz ID:', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('@Johnny123', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Beneficiary', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('Victor Nwabali', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Amount sent:', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('N720,000.00', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Date:', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('2/3/2024 2:34pm', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ), 
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Description', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('For food', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Trasaction Reference:', style: get12TextStyle(
                                  color: ColorManager.ktext,
                                  fontSize: 13,
                                ),),
                                Text('QQ72619AHB1', style: get12TextStyle(
                                  color: ColorManager.kTitleText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                            Gap(60),
                            Container(
                          height: 50,
                          width: 264,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: ColorManager.kbuttonColor
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Icon(Icons.share_sharp, color: ColorManager.kbuttonColor,),
                            Text('Share Receipt', style: get17TextStyle(
                              fontSize: 17,
                              color: ColorManager.kbuttonColor,
                            ),),
                          ],),
                        )
                          ],
                        ),
                      ),
                    ),
                     Positioned(
                      top: 0,
                      left: 100,
                      right: 100,
                      child: SuccessIcon(
                        height: 92,
                        width: 92,
                        iconSized: 40,
                      )),
                      Positioned(
                        bottom: 80,
                        left: -20,
                        right: -20,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              CircleAvatar(
                                backgroundColor: ColorManager.kScaffoldB,
                              ),
                              FittedBox(child: Text('...........................................................................')),
                              CircleAvatar(
                                backgroundColor: ColorManager.kScaffoldB,
                              ),

                            ],)
                        ), 
                  ],
                ),
              ),
                 Gap(20),
                    AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesManager.dashboardRoute);
                      },
                      text: 'Go Back to Home',
                      height: 50,
                      width: screenWidth,
                      borderColor: ColorManager.kborder,
                      borderRadius: 15,
                      buttonColor: ColorManager.kbuttonColor,
                      textColor: ColorManager.kbackground,
                      fontWeight: FontWeight.bold,
                      fontsize: 20,
                    ),
            ],
          ),
        ),
    );
  }
}