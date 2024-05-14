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
        title: Text(
          'Request Money',
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
        padding: EdgeInsets.all(20),
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Gap(30),
            Text('Get paid via a link', style: get17TextStyle(fontSize: 20),),
            Text('Share your link to get paid by anyone'),
            Gap(30),
            Container(
              padding: EdgeInsets.all(10),
              height: 206,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.kbackground
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Assets.images.profile.path),
                  ),
                  Gap(10),
                  Text('Arinze Usman Ade', style: get17TextStyle(
                    fontSize: 17,
                  ),),
                  Text('@Arus123'),
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
                        Text('https://funzapp.com/arus123')
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
          Gap(50)
          ],
        ),
      ),
    );
  }
}