import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/Authentication/pin_code_screen.dart';
import 'package:funz/presentations/Authentication/welcome_back.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            backgroundColor: ColorManager.kScaffoldB,
            // appBar: CustomAppBar(
            //   leading: InkWell(
            //       onTap: () {
            //         Navigator.pop(context);
            //       },
            //       child: Assets.images.cancelicon.image()),
            // ),
            body: Container(
                height: screenHeight,
                width: screenWidth,
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Gap(30),
                SizedBox( height: 20, 
                child: Assets.images.cancelicon.image(
            // height: 7
          ),),
          Gap(30),
                      Text(
                        'Set up your Password',
                        style: get17TextStyle(
                            fontSize: 17,
                            color: ColorManager.kbuttonColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Gap(20),

                      SizedBox(
                        height: 55,
                        width: screenWidth,
                        child: AppTextFormField(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          // backgroundColor: ColorManager.kScaffoldB,
                          text: 'Password*',
                          controller: emailController,
                          hintText: '',
                          // onChanged: (_) => _dataEntered(),
                          obscureText: passToggle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            if (value.length < 8) {
                              return 'The password field must be at least 8 characters.';
                            }
                            return null;
                          },
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: passToggle
                                ? Assets.images.fluentEyeHide24Regular.image()
                                : Icon(
                                    Icons.visibility,
                                    color: ColorManager.ktext,
                                    size: 13,
                                  ),
                          ),
                        ),
                      ),
                      Gap(20),
                      SizedBox(
                        height: 55,
                        width: screenWidth,
                        child: AppTextFormField(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          // backgroundColor: ColorManager.kScaffoldB,
                          text: 'Re-enter Password*',
                          controller: passwordController,
                          hintText: '',
                          // onChanged: (_) => _dataEntered(),
                          obscureText: passToggle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            if (value.length < 8) {
                              return 'The password field must be at least 8 characters.';
                            }
                            return null;
                          },
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: passToggle
                                ? Assets.images.fluentEyeHide24Regular.image()
                                : Icon(
                                    Icons.visibility,
                                    color: ColorManager.ktext,
                                    size: 13,
                                  ),
                          ),
                        ),
                      ),
                      // Divider(
                      //   color: ColorManager.kbuttonColor,
                      //   thickness: 0.2,
                      // ),
                      Gap(100),
                      AppButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => PinCodeWidget()));
                        },
                        text: 'Continue',
                        fontsize: 17,
                        fontWeight: FontWeight.w500,
                        height: 50,
                        width: screenWidth,
                        buttonColor: ColorManager.kbuttonColor,
                        textColor: ColorManager.kbackground,
                        borderRadius: 15,
                      ),
                    ]))));
  }
}
