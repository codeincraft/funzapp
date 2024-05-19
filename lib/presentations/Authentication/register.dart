import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/Authentication/signin.dart';
import 'package:funz/widgets/app_button.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController controller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  var _status = ['.', 'Nigeria', 'United States of America', 'Kenya'];

  var _currentStatusSelected = '.';
  var _gender = ['.', 'Male', 'Fale', 'Others'];

  var _currentGendersSelected = '.';
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
        //   leading: Assets.images.cancelicon.image(
        //     height: 7
        //   ),
        // ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(40),
                SizedBox( height: 20, 
                child: Assets.images.cancelicon.image(
            // height: 7
          ),),
          Gap(20),
                Text(
                  'Lets get you started',
                  style: get17TextStyle(
                      fontSize: 17,
                      color: ColorManager.kbuttonColor,
                      fontWeight: FontWeight.bold),
                ),
                Gap(30),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 160,
                                child: AppTextFormField(
                                  fontSize: 11,
                                  text: 'First Name (Given Name)*',
                                ),
                              ),
                              Text(
                                'Tallies with government ID',
                                style: get12TextStyle(
                                    fontSize: 10,
                                    color: ColorManager.kbuttonColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 55,
                                width: 160,
                                child: AppTextFormField(
                                    fontSize: 11, text: 'Last Name(Surname)*'),
                              ),
                              Text(
                                'Tallies with government ID',
                                style: get12TextStyle(
                                    fontSize: 10,
                                    color: ColorManager.kbuttonColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(20),
                      SizedBox(
                        height: 55,
                        width: screenWidth,
                        child: AppTextFormField(
                          fontSize: 11,
                          text: 'Email address*',
                          hintText: 'anus123@gmail.com',
                        ),
                      ),
                      Gap(20),
                      SizedBox(
                        height: 55,
                        width: screenWidth,
                        child: AppTextFormField(
                          fontSize: 11,
                          text: 'Phone Number*',
                        ),
                      ),
                      Gap(20),
                      SizedBox(
                        height: 55,
                        width: screenWidth,
                        child: AppTextFormField(
                          // suffix: ,
                          suffixIcon: 
                            Image(
                              height: 12,
                              image: AssetImage(
                              Assets.images.calender.path
                              )),
                           
                          fontSize: 11,
                          text: 'Date of Birth*',
                        ),
                      ),
                      Text(
                        'Ensure it is correct to verify your account',
                        style: get12TextStyle(
                            fontSize: 10,
                            color: ColorManager.kbuttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      Gap(20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        height: 50,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            // color: ColorManager.kbackground,
                            // borderRadius: BorderRadius.circular(20)
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Gap(10),
                            Text(
                              'Where will you be sending money from?*',
                              style: get12TextStyle(
                                  color: ColorManager.kbuttonColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 375,
                              height: 20,
                              child: Container(
                                width: 320,
                                height: 30,
                                child: DropdownButton<String>(
                                  icon: Image(
                                    height: 5,
                                    image: AssetImage(Assets.images.chevron.path)),
                                  onTap: () {},
                                  underline: Container(),
                                  items:
                                      _status.map((String dropDownStringItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: FittedBox(
                                          child: Text(
                                        dropDownStringItem,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: ColorManager.kbuttonColor),
                                      )),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  iconSize: 20,
                                  iconEnabledColor: Colors.black,
                                  onChanged: (dynamic newValueSelected) {
                                    _onDropDownItemSelected(newValueSelected);
                                  },
                                  value: _currentStatusSelected,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorManager.kbuttonColor,
                        thickness: 0.2,
                        height: 2,
                      ),
                      FittedBox(
                          child: Text(
                        'To set up default country currency',
                        style: get14TextStyle(
                          fontSize: 9,
                          color: ColorManager.kbuttonColor,
                        ),
                      )),
                      Gap(20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        height: 50,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            // color: ColorManager.kbackground,
                            // borderRadius: BorderRadius.circular(20)
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Gap(10),
                            Text(
                              'Gender*',
                              style: get12TextStyle(
                                  color: ColorManager.kbuttonColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 375,
                              height: 20,
                              child: Container(
                                width: 320,
                                height: 30,
                                child: DropdownButton<String>(
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  icon: Image(
                                    height: 5,
                                    image: AssetImage(Assets.images.chevron.path)),
                                  onTap: () {},
                                  underline: Container(),
                                  items:
                                      _gender.map((String dropDownStringItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: FittedBox(
                                          child: Text(
                                        dropDownStringItem,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: ColorManager.kbuttonColor),
                                      )),
                                    );
                                  }).toList(),
                                  isExpanded: true,
                                  iconSize: 20,
                                  iconEnabledColor: Colors.black,
                                  onChanged: (dynamic newValueSelected) {
                                    _onDropDownGenderSelected(newValueSelected);
                                  },
                                  value: _currentGendersSelected,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorManager.kbuttonColor,
                        thickness: 0.2,
                        
                        height: 2,
                      ),
                    ],
                  ),
                ),
                Gap(40),
                AppButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => SignIn()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      this._currentStatusSelected = newValueSelected;
    });
  }

  void _onDropDownGenderSelected(newValueSelected) {
    setState(() {
      this._currentGendersSelected = newValueSelected;
    });
  }
}
