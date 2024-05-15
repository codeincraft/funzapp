import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/presentations/home_screen/top_up_successful.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';

class TopUp2 extends StatefulWidget {
  const TopUp2({super.key});

  @override
  State<TopUp2> createState() => _TopUp2State();
}

class _TopUp2State extends State<TopUp2> {
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
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                  Gap(10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 63,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kWhite,
                  ),
                  child: Row(
                    children: [
                      Text("Paying:", style: get17TextStyle(
                        fontSize: 16
                      ),),
                      Text(' N120,000', style: get17TextStyle(
                        fontSize: 16,
                      ),),
                    ],
                  ),
                  ),
                  Gap(18),
                  Container(
                      alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kWhite,
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text("Bank Account Details", style: get17TextStyle(
                            fontSize: 14
                          ),),
                          Icon(Icons.copy_outlined, size: 20,),
                            ],
                          ),
                          Gap(10),
                           Text("2210025892", style: get17TextStyle(
                            fontSize: 22
                          ),),
                          Gap(10),
                           Text("Funz Bank", style: get17TextStyle(
                            fontSize: 14
                          ),),
                          Gap(10),
                           Text("Arinze Usman Ade", style: get17TextStyle(
                            fontSize: 14
                          ),),
                      ],
                    ),
                  ),
                  Gap(18),
                  // Credit or Debit Card
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 63,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Credit or Debit Card", style: get17TextStyle(
                            fontSize: 16
                          ),),
                          Text("Instant Top-up", style: get12TextStyle(
                            fontSize: 14, 
                            color: ColorManager.kStroke
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 13,),
                    ],
                  ),
                  ),
                  Gap(28),
                  AppButton(
                    onTap: () {
                             showModalBottomSheet(
                          barrierColor: ColorManager.kbackgroundblue.withOpacity(0.0),
                          context: context, 
                          isDismissible: false,
                           isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30))),
                          builder: (BuildContext context) {
                              return TopUpSuccessful();
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
