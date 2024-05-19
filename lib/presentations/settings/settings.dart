import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List img = [
    Assets.images.getFunzBusiness.path,
    Assets.images.yourprofile.path,
    Assets.images.statement.path,
    Assets.images.referearn.path,
    Assets.images.savedcard.path,
    Assets.images.security.path,
    Assets.images.accountlimit.path,
    Assets.images.rateandfees.path,
    Assets.images.helpcenter.path
  ];
  List<String> title = [
    'Get Funzs Business',
    'Your Profile',
    'Statements & Reports',
    'Refer & Earn',
    'Save Cards',
    'Security',
    'Account Limits',
    'Rates & Fees',
    'Help Center'
  ];
  List<String> subtitle = [
    ' ',
    'Check your account information',
    'DownLoad Monthly Statements',
    'Invite your friend & get a bonus',
    'Manage connected cards',
    'Protect yourself from intruders',
    'How much you can spend and receive',
    'See Exchange Rate and Fees',
    'Have an issue? Speak to our team'
  ];
  // List<String> amount = ['N322,830.00', '\$\0.00' , 'K0.00', 'C0.00', 'R0.00'];
  int selectedIndex = 0;
  void _handleContainerTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Settings',
                  style: get17TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.kbuttonColor,
                  ),
                ),
                Gap(20),
                Container(
                  width: 70,
                  padding: EdgeInsets.only(left: 10),
                  child: Assets.images.profileBarcode.image(height: 70),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Arinze Usman Ade',
                      style: get17TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.kbuttonColor,
                      ),
                    ),
                    Assets.images.verified.image(),
                  ],
                ),
                Text('@Arus123'),
                Gap(10),
                Container(
                  height: 670,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.ktext,
                            offset: Offset.infinite,
                            blurRadius: 0.2)
                      ],
                      color: ColorManager.kbackground,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: List.generate(9, (index) {
                      return ListTile(
                        horizontalTitleGap: 10,
                        title: Text(
                          title[index],
                          style: get17TextStyle(
                              fontSize: 13,
                              color: ColorManager.kbuttonColor,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          subtitle[index],
                          style: get14TextStyle(
                              fontSize: 12, color: ColorManager.ktext, 
                              fontWeight: FontWeight.w500
                              ),
                        ),
                        leading: Image(image: AssetImage(img[index])),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        ),
                      );
                    }),
                  ),
                ),
                Gap(10),
                Text(
                  'Sign Out',
                  style: get16TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
