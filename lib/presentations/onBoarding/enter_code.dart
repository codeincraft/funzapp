import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/Authentication/register.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
            backgroundColor: ColorManager.kScaffoldB,
            body: Container(
                height: screenHeight,
                width: screenWidth,
                // padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                      height: 394,
                      width: screenWidth,
                      child: Stack(
                        children: [
                          Assets.images.lightbackgroundrocket.image(
                              // fit: BoxFit.fill
                              ),
                          Positioned(
                            top: 50,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              height: 50,
                              width: screenWidth,
                              // color: Colors.amber,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Assets.images.cancelicon.image()),
                                  Assets.images.appIcon2.image(height: 30),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                      Gap(20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enter the code sent to',
                              style: get17TextStyle(
                                fontSize: 17,
                                color: ColorManager.kbuttonColor,
                              ),
                            ),
                            Gap(5),
                            Text(
                              'arus123@gmail.com',
                              style: get14TextStyle(
                                color: ColorManager.kbuttonColor,
                                fontSize: 13,
                              ),
                            ),
                            Gap(20),
                           AppTextFormField(text: 'Code'),
                           
                            // Gap(20),
                            // Gap(10),
                            Container(
                              // padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Gap(20),
                                  Text('CHECK YOUR EMAIL', style: get12TextStyle(
                                     color: ColorManager.kbuttonColor,
                                     fontSize: 10,
                                     fontWeight: FontWeight.bold
                                  ),),
                                  Gap(20),
                                  AppButton(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (builder) =>
                                                  SignUp()));
                                    },
                                    text: 'Continue',
                                    height: 50,
                                    width: screenWidth,
                                    borderColor: ColorManager.kborder,
                                    borderRadius: 15,
                                    buttonColor: ColorManager.kbuttonColor,
                                    textColor: ColorManager.kbackground,
                                    fontWeight: FontWeight.bold,
                                    fontsize: 15,
                                  ),
                                  Gap(10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Wrong email address?',
                                        style: get12TextStyle(
                                          color: ColorManager.kbuttonColor,
                                          fontSize: 15
                                        ),
                                      ),
                                      Gap(5),
                                      Text(
                                        'Start afresh',
                                        style: get12TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: ColorManager.kbuttonColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(20),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
