import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class RequestMoney2 extends StatelessWidget {
  const RequestMoney2({super.key});

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
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Gap(40),
              //  Gap(10),
              Container(
                height: 74,
                width: screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.kborder.withOpacity(0.15),
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are requesting',
                          style: get14TextStyle(fontSize: 13),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
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
                                    horizontal: 20), // Adjust padding as needed
                              ),
                              keyboardType: TextInputType
                                  .number, // Set keyboard type to number
                            ),
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
              SizedBox(
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorManager.kbackground,
                    hintText: 'Description (Optional)',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16), // Adjust padding as needed
                    // prefixIcon: Icon(Icons.search, color: ColorManager.ktext,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none, // Remove border
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.black), // Adjust text color as needed
                  cursorColor: Colors.black, // Adjust cursor color as needed
                  keyboardType:
                      TextInputType.text, // Adjust keyboard type as needed
                  maxLines: 1, // Ensure single line
                  minLines: 1, // Ensure single line
                ),
              ),

              Spacer(),
              AppButton(
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.dashboardRoute);
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
    );
  }
}
