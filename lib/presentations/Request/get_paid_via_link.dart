import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class GetPaidViaLink extends StatelessWidget {
  const GetPaidViaLink({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      appBar: CustomAppBar(
        leadingWidth: 0,
        leading: Icon(Icons.arrow_back_ios, color: ColorManager.kbuttonColor, size: 15,),
        title: Text(
          'Request Money',
          style: get17TextStyle(fontSize: 17,
          color: ColorManager.kbuttonColor,),
        ),
        actions: [
          Icon(
            Icons.help_outline_outlined,
            color: ColorManager.kbuttonColor,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Gap(30),
            Text('Get paid via a link', style: get17TextStyle(fontSize: 15, color: ColorManager.kbuttonColor,),),
            Text('Share your link to get paid by anyone', style: get12TextStyle(
              color: ColorManager.ktext,
              fontWeight: FontWeight.w500,
              fontSize: 13
            ),),
            Gap(30),
            Container(
              padding: EdgeInsets.all(10),
              height: 206,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.kbackground,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.ktext,
                    blurRadius: 0.2
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Assets.images.profile.path),
                  ),
                  Gap(10),
                  Text('Arinze Usman Ade', style: get17TextStyle(
                    fontSize: 15,
                    color: ColorManager.kbuttonColor,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('@Arus123', style: get12TextStyle(
                    color: ColorManager.ktext,
                    fontSize: 15
                  ),),
                  Gap(20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    height: 28,
                    width: 226,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.kWhite,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.copy_sharp, size: 15,),
                        Gap(10),
                        Text('https://funzapp.com/arus123',
                        style: get12TextStyle(
                          fontSize: 13,
                          color:  ColorManager.kbuttonColor,
                          fontWeight: FontWeight.w500
                        ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          AppButton(
            onTap: () {
              Navigator.pushNamed(context, RoutesManager.requestMoney);
            },
            text: 'Share your link',
            height: 50,
            width: screenWidth,
            borderColor: ColorManager.kborder,
            borderRadius: 15,
            buttonColor: ColorManager.kbuttonColor,
            textColor: ColorManager.kbackground,
            fontWeight: FontWeight.bold,
            fontsize: 17,
          ),
          Gap(50)
          ],
        ),
      ),
    );
  }
}