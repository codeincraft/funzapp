import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';

class RequestFromAFriend extends StatelessWidget {
  const RequestFromAFriend({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gap(30),
              SizedBox(
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorManager.kbackground,
                    hintText: '@funzlag:Email or Phone Number',
                    hintStyle: TextStyle(color: ColorManager.ktext, fontSize: 12),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 0, horizontal: 16), // Adjust padding as needed
                    prefixIcon: Assets.images.searchIcon.image(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none, // Remove border
                    ),
                  ),
                  style:
                      TextStyle(color: Colors.black), // Adjust text color as needed
                  cursorColor: Colors.black, // Adjust cursor color as needed
                  keyboardType:
                      TextInputType.text, // Adjust keyboard type as needed
                  maxLines: 1, // Ensure single line
                  minLines: 1, // Ensure single line
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesManager.RequestMoney2);
                },
                child: Text('Search for any user on Funz to transact with', style: get16TextStyle(
                  color: ColorManager.kbuttonColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),),
              ),
              Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
