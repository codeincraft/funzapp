import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class FindBeneficiary extends StatefulWidget {
  const FindBeneficiary({super.key});

  @override
  State<FindBeneficiary> createState() => _FindBeneficiaryState();
}

class _FindBeneficiaryState extends State<FindBeneficiary> {
  TextEditingController bankNameController = TextEditingController();
  TextEditingController accountNameController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

   bool _switchValue = false; 
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Frequent Beneficiaries',
                      style: get12TextStyle(
                        fontSize: 13,
                        color: ColorManager.ktext,
                      ),
                    ),
                    Text(
                      'Find Beneficiary',
                      style: get17TextStyle(
                        color: ColorManager.kbuttonColor,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 93.46,
                      width: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.23),
                          color: ColorManager.kbackground,
                          border: Border.all(
                            color: ColorManager.kborder.withOpacity(0.2),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.kWhite,
                            radius: 28,
                            child: Text(
                              'O',
                              style: get17TextStyle(),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Osewa Daniel',
                              style: get12TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 93.46,
                      width: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.23),
                          color: ColorManager.kbackground,
                          border: Border.all(
                            color: ColorManager.kborder.withOpacity(0.2),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.kWhite,
                            radius: 28,
                            child: Text(
                              'A',
                              style: get17TextStyle(),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Akimi Jude',
                              style: get12TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Gap(10),
                    Container(
                      height: 93.46,
                      width: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.23),
                          color: ColorManager.kbackground,
                          border: Border.all(
                            color: ColorManager.kborder.withOpacity(0.2),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.kWhite,
                            radius: 28,
                            child: Text(
                              'R',
                              style: get17TextStyle(),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Rachael Uyo',
                              style: get12TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Gap(10),
                    Container(
                      height: 93.46,
                      width: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.23),
                          color: ColorManager.kbackground,
                          border: Border.all(
                            color: ColorManager.kborder.withOpacity(0.2),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.kWhite,
                            radius: 28,
                            child: Text(
                              'T',
                              style: get17TextStyle(),
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              'Thelma Ade',
                              style: get12TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Form(
                    child: Column(
                  children: [
                    Gap(20),
                    AppTextField(
                      controller: bankNameController,
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                      hintText: 'Bank Name',
                      text: '',
                      obscureText: false,
                      backgroundColor: ColorManager.kBlack,
                      // fillColor: ColorManager.kBlack,
                    ),
                    Gap(20),
                    AppTextField(
                      controller: bankNameController,
                      hintText: 'Account Number',
                      text: '',
                      obscureText: false,
                      backgroundColor: ColorManager.kBlack,
                      // fillColor: ColorManager.kBlack,
                    ),
                    Gap(20),
                    AppTextField(
                      controller: bankNameController,
                      hintText: 'Account Name',
                      text: '',
                      obscureText: false,
                      backgroundColor: ColorManager.kBlack,
                      // fillColor: ColorManager.kBlack,
                    ),
                    Gap(20),
                    AppTextField(
                      controller: bankNameController,
                      hintText: 'Description',
                      text: '',
                      obscureText: false,
                      backgroundColor: ColorManager.kBlack,
                      // fillColor: ColorManager.kBlack,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Save Beneficiary'),
                        CupertinoSwitch(
                          value: _switchValue,
                          activeColor: ColorManager.kbackgroundblue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            })
                            ;
                          },
                        ),
                      ],
                    ),
                    Gap(20),
                    AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesManager.shareReceipt);
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
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
