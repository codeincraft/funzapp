import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/loan/loan_home.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class LoanScreen extends StatefulWidget {
  const LoanScreen({super.key});

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  TextEditingController controller = TextEditingController();
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
              'Loans',
              style: get17TextStyle(fontSize: 17),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.kbackground,
                      border: Border.all(
                        color: ColorManager.kborder.withOpacity(0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Assets.images.searchIcon.image(),
                        Expanded(
                          child: AppTextField(
                              controller: controller,
                              hintText: 'Find Loans',
                              text: '',
                              obscureText: false),
                        ),
                      ],
                    ),
                  ),
                  Gap(30),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => LoanHome()));
                      },
                      child: Assets.images.homeloan.image()),
                  Gap(20),
                  Assets.images.carloan.image(),
                  Gap(20),
                  Assets.images.studentloan.image(),
                  Gap(20),
                  Assets.images.giftcardloan.image(),
                  Gap(20),
                  Assets.images.overdraft1.image(),
                ],
              ),
            ),
          ),
        ));
  }
}
