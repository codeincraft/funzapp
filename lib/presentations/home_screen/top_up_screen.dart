import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/presentations/home_screen/top_up_screen2.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.7,
      maxChildSize: 0.7,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 470,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.kbackground,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Scroll Controller
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 6,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorManager.kborder),
                    ),
                  ),
                  Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new_rounded),
                      Text(
                        'Add Money',
                        style: get16TextStyle(
                            color: ColorManager.kTitleText,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.help_outline,
                        color: ColorManager.kTitleText,
                      )
                    ],
                  ),
                  Gap(20),
                  Align(
                    child: Text(
                      'Enter Amount',
                      style: get16TextStyle(
                          color: ColorManager.kTitleText,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 105,
                      child: Align(
                        alignment: Alignment.center,
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'N0.00',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey, 
                              ), // Customize hint text color if needed
                              border: InputBorder.none, // Remove the border
                              filled: false, // Remove background color
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal:20), // Adjust padding as needed
                            ),
                            keyboardType:
                                TextInputType.number, // Set keyboard type to number
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Divider(
                      thickness: 3,
                    ),
                  ),
                  Gap(20),
                  AppButton(
                    onTap: () {
                             showModalBottomSheet(
                              isDismissible: false,
                          barrierColor: ColorManager.kbackgroundblue.withOpacity(0.0),
                          context: context, 
                           isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30))),
                          builder: (BuildContext context) {
                              return TopUp2();
                            }
                          );
                    },
                    text: 'Continue',
                    height: 50,
                    width: double.infinity,
                    textColor: ColorManager.kbackground,
                    fontWeight: FontWeight.bold,
                    borderRadius: 15,
                    buttonColor: ColorManager.kbackgroundblue,
                  ),
                ],
              ),
            ));
      }),
    );
  }
}
