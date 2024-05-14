import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';

class TopUpSuccessful extends StatefulWidget {
  const TopUpSuccessful({super.key});

  @override
  State<TopUpSuccessful> createState() => _TopUpSuccessfulState();
}

class _TopUpSuccessfulState extends State<TopUpSuccessful> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      maxChildSize: 0.75,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 500,
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
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Icon(Icons.arrow_back_ios_new_rounded),
                        onTap: () => Navigator.pop(context),
                      ),
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
                  Gap(30),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.kTitleText.withOpacity(0.1)
                      ),
                      shape: BoxShape.circle,
                    color: ColorManager.kWhite.withOpacity(0.3),
                    ),
                    child: CircleAvatar(
                    backgroundColor: ColorManager.kIconB,
                    child: Icon(Icons.check_circle, color: ColorManager.kbackgroundblue,
                    size: 50,
                    ),
                    ),
                  ),
                  Gap(18),
                  // Credit or Debit Card
                  Text('Top-Up Successful',
                      style: get17TextStyle(fontSize: 20)),

                  Gap(30),
                  Text(
                    'Your wallet has been successfully with\nN120,000. This amount will reflect in your wallet within\nfew seconds',
                    style: get12TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                  Gap(50),
                  AppButton(
                    onTap: () {
                     Navigator.pushNamed(context, RoutesManager.dashboardRoute);
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
