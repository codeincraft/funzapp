import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class LoanHome extends StatefulWidget {
  const LoanHome({super.key});

  @override
  State<LoanHome> createState() => _LoanHomeState();
}

class _LoanHomeState extends State<LoanHome> {

  var _status = ['Payback Method', 'Bank Transfer','Credit Card'];

  var _currentStatusSelected = 'Payback Method';
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
         FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorManager.kScaffoldB,
        appBar: CustomAppBar(
          title: Text(
            'Request Money',
            style: get17TextStyle(fontSize: 20),
          ),
          // actions: [
          //   Icon(
          //     Icons.help_outline_outlined,
          //     color: ColorManager.kbuttonColor,
          //   ),
          // ],
        ),
  body: Container(
    height: screenHeight,
    width: screenWidth,
    padding: EdgeInsets.all(20),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Assets.images.homeloan.image(),
          Gap(20),
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
                          SizedBox(
                            height: 45,
                            width: 170,
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
                                    horizontal: 0,
                                    ), // Adjust padding as needed
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
                Gap(20),
                SizedBox(height: 100,
                child: Column(
                  children: [
                    Row(children: [
                      Assets.images.addicon.image(),
                      Gap(10),
                      Text('Payback period = Monthly',)
                    ],),
                    Row(children: [
                      Assets.images.minusicon.image(),
                      Gap(10),
                      Text('Fee = 5% Interest',)
                    ],),
                    Gap(10),
                    Row(children: [
                      Assets.images.instanticon.image(),
                      Gap(10),
                      Text('To be received few days after approval',)
                    ],)
                  ],
                ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  height: 55,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: screenWidth * 0.25,
                    height: 60,
                    child: DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      onTap: () {
                      },
                      underline: Container(),
                      items: _status.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: FittedBox(child: Text(dropDownStringItem, style: TextStyle(fontSize: 20),)),
                        );
                      }).toList(),
                      isExpanded: true,
                      iconSize: 20,
                      iconEnabledColor: Colors.black,
                      onChanged: (dynamic newValueSelected) {
                        _onDropDownItemSelected(newValueSelected);
                      },
                      value: _currentStatusSelected,
                    ),
                  ),
                ),
                Gap(60),
                AppButton(onTap: (){},
                 text: 'Request Loan',
                 fontsize: 17,
                 fontWeight: FontWeight.w500,
                 height: 50,
                 width: screenWidth,
                 buttonColor: ColorManager.kbuttonColor,
                 textColor: ColorManager.kbackground,
                 borderRadius: 15,
                 )
        ],
      ),
    ),
  ),
        )

    );
  }
   void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      this._currentStatusSelected = newValueSelected;
    });
  }

}