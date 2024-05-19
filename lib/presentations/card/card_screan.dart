import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:gap/gap.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                Text('Card',
                style: get17TextStyle(
                  fontSize: 17,
                  color: ColorManager.kbuttonColor,
                  fontWeight: FontWeight.bold
                ),),
                Gap(20),
                SizedBox(
                  height: 200,
                  width: 330,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                       Assets.images.atm2.path)
                      ),
                    ),
          
                Gap(20),
                Text('Funz Mastercard',
                style: get17TextStyle(
                  fontSize: 17,
                  color: ColorManager.kTitleText
                ),),
                Text('Make you eligible to perfomr online shopping\nand subscription',
                style: get16TextStyle(
                  fontSize: 15,
                  color: ColorManager.ktext,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,),
                Gap(20),
                Container(
                  height: 210,
                  width: screenWidth,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: ColorManager.kbackground,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.ktext,
                        blurRadius: 0.2,
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Card Purchase Fee',
                      style: get16TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.ktext
                      ),
                      ),
                      Gap(10),
                      Container(
                        height: 19.8,
                        width: 52,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: ColorManager.kbuttonColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: FittedBox(child: Text('N1,200.00', style: get12TextStyle(color: Colors.white, fontSize: 7.7, fontWeight: FontWeight.bold),)),
                      ),
                      Gap(15),
                      Text('Charges',
                      style: get12TextStyle(
                        color: ColorManager.ktext,
                        fontSize: 13,
                        fontWeight:   FontWeight.w500,
                      ),),
                      Gap(5),
                      Row(
                        children: [
                          Text('Top-Up Fee:',style: get12TextStyle(color: ColorManager.kbuttonColor, fontSize: 13, fontWeight: FontWeight.w500
                          // fontWeight: FontWeight.w500
                          ),),
                          Text('0.5% (minimum of N300.00)', style: get12TextStyle(color: ColorManager.kbuttonColor, fontSize: 13, fontWeight: FontWeight.w500,
                          //  fontSize: 13, 
                          //  fontWeight: FontWeight.w500
                           ),),
                        ],
                      ),
                      Row(children: [
                          Text('Monthly maintenance fee:', style: get12TextStyle(color: ColorManager.kbuttonColor, fontSize: 13, fontWeight: FontWeight.w500
                           ),),
                          Text(' N100.00', 
                          style:  get12TextStyle(color: ColorManager.kbuttonColor, fontSize: 13, fontWeight: FontWeight.w500
                          // fontWeight: FontWeight.w500
                          ),)
                      ],),
                      Gap(15),
                      Text('Security'),
                      Text('Yes',
                      style: get12TextStyle(color: ColorManager.kbuttonColor, fontSize: 13, fontWeight: FontWeight.w500)
                      ),  
                    ],
                  ),
                ),
                 Gap(30),
                    AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesManager.shareReceipt);
                      },
                      text: 'Get a MasterCard',
                      height: 50,
                      width: screenWidth,
                      borderColor: ColorManager.kborder,
                      borderRadius: 15,
                      buttonColor: ColorManager.kbuttonColor,
                      textColor: ColorManager.kbackground,
                      fontWeight: FontWeight.bold,
                      fontsize: 15,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}