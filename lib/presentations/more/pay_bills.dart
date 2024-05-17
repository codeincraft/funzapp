import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/more/airtime.dart';
import 'package:funz/presentations/more/betting/betting.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class PayBills extends StatelessWidget {
  const PayBills({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      appBar: CustomAppBar(
        title: Text('Pay Bills', style: get17TextStyle(
          fontSize: 17,
        ),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (builder)=> Airtime()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 55,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kbackground,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: ColorManager.kWhite,
                        child: Assets.images.phone.image()),
                        Gap(20),
                        Text('Airtime', style: get17TextStyle(fontSize: 14,
                        color: ColorManager.kTitleText),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15,),
                    ],
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kWhite,
                      child: Assets.images.cabletv.image()),
                      Gap(20),
                      Text('Cable Tv', style: get17TextStyle(fontSize: 14,
                      color: ColorManager.kTitleText),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15,),
                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kWhite,
                      child: Assets.images.internent.image()),
                      Gap(20),
                      Text('Internet', style: get17TextStyle(fontSize: 14,
                      color: ColorManager.kTitleText),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15,),
                  ],
                ),
              ),
              Gap(20),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>BettingScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 55,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kbackground,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: ColorManager.kWhite,
                        child: Assets.images.betting.image()),
                        Gap(20),
                        Text('Betting', style: get17TextStyle(fontSize: 14,
                        color: ColorManager.kTitleText),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 15,),
                    ],
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kWhite,
                      child: Assets.images.electricity.image()),
                      Gap(20),
                      Text('Electricity', style: get17TextStyle(fontSize: 14,
                      color: ColorManager.kTitleText),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15,),
                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kWhite,
                      child: Assets.images.entertainment.image()),
                      Gap(20),
                      Text('Entertainment', style: get17TextStyle(fontSize: 14,
                      color: ColorManager.kTitleText),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15,),
                  ],
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: ColorManager.kWhite,
                      child:   Assets.images.flight.image()
                      ),
                      Gap(20),
                      Text('Travel', style: get17TextStyle(fontSize: 14,
                      color: ColorManager.kTitleText),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15,),
                  ],
                ),
              ),
              Gap(20),
              
            ],
          ),
        ),
      ),
    );
  }
}