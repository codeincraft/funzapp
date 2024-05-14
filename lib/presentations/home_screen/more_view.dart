import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.53,
      maxChildSize: 0.53,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.kbackground,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    'Savings and Investments',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  Text(
                    'Use QR Code',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  Text(
                    'Pay Bills',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  Text(
                    'Loans',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  Text(
                    'Bulk Payments',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  Text(
                    'View Transaction History',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Gap(20),
                  
                  Gap(20)
                ],
              ),
            ));
      }),
    );
    ;
  }
}
