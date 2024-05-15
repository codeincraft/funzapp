import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
        body:  Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesManager.sendMoneyInternationally);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 74,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kbackground,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Send Money Internationally', style: get17TextStyle(
                            fontSize: 16,
                          ),),
                          Text('Up to 10 countries available', style: get12TextStyle(
                             color: ColorManager.ktext,
                          ),),
                        ],),
                        Icon(Icons.arrow_forward_ios_rounded, size: 16,),
                    ],
                  ),
                ),
              ),
              Gap(20),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesManager.findBenefiary);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 74,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.kbackground,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('NGN Bank Accounts', style: get17TextStyle(
                            fontSize: 16,
                          ),),
                          Text('Send to a Nigerian bank account', style: get12TextStyle(
                            color: ColorManager.ktext,
                          ),),
                        ],),
                        Icon(Icons.arrow_forward_ios_rounded, size: 16,),
                    ],
                  
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 74,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Send Digital Currencies', style: get17TextStyle(
                          fontSize: 16,
                        ),),
                        Text('USDT, USDC, SOL wallet addresses', style: get12TextStyle(
                          color: ColorManager.ktext,
                        ),),
                      ],),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16,),
                  ],
                
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 74,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kbackground,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Funz Wallet', style: get17TextStyle(
                          fontSize: 16,
                        ),),
                        Text('Send to a funz wallet or invite a new member', style: get12TextStyle(
                          color: ColorManager.ktext,
                        ),),
                      ],),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16,),
                  ],
                
                ),
              ),
            ],
          ),
          ),
    );
  }
}