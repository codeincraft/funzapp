import 'package:flutter/material.dart';
import 'package:funz/bottom_navigation_bar.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
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
            //   leading: Assets.images.cancelicon.image(),
            // ),
            body: Container(
                height: screenHeight,
                width: screenWidth,
                // padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      // Assets.images.darkbackgroundrocket.image(),
                      Container(
                        height: 394,
                        width: screenWidth,
                        child: Stack(
                          children: [
                            Assets.images.darkbackgroundrocket.image(),
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
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child:
                                            SizedBox(
                                              height: 24,
                                              child: Assets.images.cancel2.image())
                                            ),
                                    Assets.images.appicon3.image(height: 30),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back!',
                              style: get17TextStyle(
                                  fontSize: 17,
                                  color: ColorManager.kbuttonColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(40),
                            SizedBox(
                              height: 55,
                              child:
                                  AppTextFormField(text: 'Type in your email'),
                            ),
                            Gap(20),
                            SizedBox(
                              height: 55,
                              width: screenWidth,
                              child: AppTextFormField(
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                backgroundColor: ColorManager.kScaffoldB,
                                text: 'Password*',
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
                                      ? Assets.images.fluentEyeHide24Regular
                                          .image()
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                ),
                              ),
                            ),
                            Gap(40),
                            AppButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            BottomNavigationBarScreen()));
                              },
                              text: 'Login',
                              fontsize: 15,
                              fontWeight: FontWeight.w500,
                              height: 50,
                              width: screenWidth,
                              buttonColor: ColorManager.kbuttonColor,
                              textColor: ColorManager.kbackground,
                              borderRadius: 15,
                            ),
                            Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account?',
                                  style: get12TextStyle(
                                    color: ColorManager.kbuttonColor,
                                    fontSize: 15,
                                  ),
                                ),
                                Gap(5),
                                Text(
                                  'Create One',
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
                      ),
                    ])))));
  }
}
