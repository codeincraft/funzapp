import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/more/loans.dart';
import 'package:funz/presentations/more/pay_bills.dart';
import 'package:funz/presentations/more/qr_code.dart';
import 'package:funz/presentations/more/savings_and_investment.dart';
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
      initialChildSize: 0.60,
      maxChildSize: 0.60,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 484,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.kbackground,
                   borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Scroll Controller
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 7,
                      width: 50,
                      child: Assets.images.slideicon.image(),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: ColorManager.kborder
                      //     ),
                    ),
                  ),
                  Gap(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SavingsAndInvestment()));
                    },
                    child: Text(
                      'Savings and Investments',
                      style: get18TextStyle(color: ColorManager.kbuttonColor),
                    ),
                  ),
                  Gap(30),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=> QRCodeScrean()));
                    },
                    child: Text(
                      'Use QR Code',
                      style: get18TextStyle(color: ColorManager.kbuttonColor),
                    ),
                  ),
                  Gap(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => PayBills()));
                    },
                    child: Text(
                      'Pay Bills',
                      style: get18TextStyle(color: ColorManager.kbuttonColor),
                    ),
                  ),
                  Gap(30),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (conext)=> LoanScreen()));
                    },
                    child: Text(
                      'Loans',
                      style: get18TextStyle(color: ColorManager.kbuttonColor),
                    ),
                  ),
                  Gap(30),
                  Text(
                    'Bulk Payments',
                    style: get18TextStyle(color: ColorManager.kbuttonColor),
                  ),
                  Gap(35),
                  Text(
                    'View Transaction History',
                    style: get18TextStyle(color: ColorManager.kbuttonColor),
                  ),
                  Gap(20),

                  // Gap(20)
                ],
              ),
            ));
      }),
    );
    ;
  }
}
