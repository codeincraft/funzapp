import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/widgets/airtime_amount_button.dart';
import 'package:gap/gap.dart';

class AirtimeClick extends StatefulWidget {
  const AirtimeClick({super.key});

  @override
  State<AirtimeClick> createState() => _AirtimeClickState();
}

class _AirtimeClickState extends State<AirtimeClick> {
   List<String> listOfTimeBelt = [
'N100.00',
'N200.00',
'N500.00',
'N1,000.00',
'N2,000.00',
'N5,000.00',


];

  // int gottenStars = 4;
  int selectedIndex = 0;
   List<Color> containerColors = List<Color>.filled(6, ColorManager.kStroke);
  // List<Color> colorList = [ColorManager.k];
    // Method to handle container tap and update the color
  void _handleContainerTap(int index) {
    setState(() {
      // containerColors[index] = containerColors[index] == ColorManager.kStroke
      //     ? Colors.transparent
      //     : ColorManager.kStroke;
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.10,
      // alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          // FittedBox(
          //   child: AppContentText(text: 'Time Belt', size: 20,
          //   fontWeight: FontWeight.bold,),
          // ),
          // Spacer(),
           FittedBox(
             child: Wrap(
              spacing: 10,
              children: [
                Column(
                  children: [
                    Row(
                      children: List.generate(3,
                       (index) {
                        return InkWell(
                          onTap: () =>
                          _handleContainerTap(index),
                          child: AirtimeButton(
                            textColor:  ColorManager.kBlack, 
                            backgroundColor: ColorManager.kWhite, 
                            borderColor: selectedIndex == index ? ColorManager.kTitleText : Colors.transparent, 
                            width: 102, 
                            height: 50,
                             text: listOfTimeBelt[index],),
                        );
                       }),
                    ),
                    Gap(10),
                    Row(
                      children: List.generate(3,
                      
                       (index) {
                        return InkWell(
                          onTap: () =>
                          _handleContainerTap(index +3),
                          child: AirtimeButton(
                            textColor:  ColorManager.kBlack, 
                            backgroundColor: ColorManager.kWhite, 
                            borderColor: selectedIndex == index +3 ? ColorManager.kTitleText : Colors.transparent,
                            width: 102, 
                            height: 50,
                             text: listOfTimeBelt[index + 3],),
                        );
                       }),
                    )
                  ],
                )
              ],
             )
           )
            //  Wrap(
            //   alignment: WrapAlignment.center,
            //   spacing: 20,
            //   children: List.generate( 1, (index) {
            //       return Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Row(
            //             children: ,
            //           )
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               AirtimeButton(
            //                 textColor: selectedIndex==index ? ColorManager.kTitleText : ColorManager.ktext, 
            //                 backgroundColor: selectedIndex==index ? ColorManager.kWhite : ColorManager.ktext, 
            //                 borderColor: selectedIndex==index ? ColorManager.kborder : Colors.transparent, 
            //                 width: screenWidth/4.9, 
            //                 height: screenHeight/22,
            //                  text: listOfTimeBelt[0],),
            //                 //  Spacer(),
            //                 Gap(20),
            //               AirtimeButton(
            //                 textColor: selectedIndex==index ? ColorManager.kTitleText : ColorManager.ktext, 
            //                 backgroundColor: selectedIndex==index ? ColorManager.kWhite : ColorManager.ktext, 
            //                 borderColor: selectedIndex==index ? ColorManager.kborder : Colors.transparent, 
            //                 width: screenWidth/4.9, 
            //                 height: screenHeight/22,
            //                  text: listOfTimeBelt[1],),
            //                  Gap(20),
            //               AirtimeButton(
            //                 textColor: selectedIndex==index ? ColorManager.kTitleText : ColorManager.ktext, 
            //                 backgroundColor: selectedIndex==index ? ColorManager.kWhite : ColorManager.ktext, 
            //                 borderColor: selectedIndex==index ? ColorManager.kborder : Colors.transparent, 
            //                 width: screenWidth/4.9, 
            //                 height: screenHeight/22,
            //                  text: listOfTimeBelt[2],),
            //             ],
            //           ),
            //              Gap(10),
            //           AirtimeButton(
            //             textColor: selectedIndex==index ? ColorManager.kTitleText : ColorManager.ktext, 
            //             backgroundColor: selectedIndex==index ? ColorManager.kWhite : ColorManager.ktext, 
            //             borderColor: selectedIndex==index ? ColorManager.kborder : Colors.transparent, 
            //             width: screenWidth/4.9, 
            //             height: screenHeight/22,
            //              text: listOfTimeBelt[index],),
            //         ],
            //       );
            //     }),
            //  ),
          //  ),
        ],
      ),
    );
  }
}