import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/card/card_screan.dart';
import 'package:funz/presentations/home_screen/dashboard.dart';
import 'package:funz/presentations/settings/settings.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final bool isSelected = false;

  List pages = [
   DashBoard(),
   DashBoard(),
   CardScreen(),
   Settings()
  ];
  int _currentIndex = 0;
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: MyAppBar(
      //   title: 'Homepage',
      //   showActionIcon: true,
      //   leading: CircleAvatar(
      //     backgroundColor: Colors.white,
      //   ),
      // ),

      // drawer: const MyNavBar(),
      backgroundColor: ColorManager.kScaffoldB,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(),
        child: pages[_currentIndex],
      ),
      // BottomNavBar
      
      // bottomNavigationBar:
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: get14TextStyle(
          color: ColorManager.kBlack
        ),
        unselectedLabelStyle:get14TextStyle(
          color: ColorManager.ktext
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 0.1,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
                  _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: ColorManager.kbackground,
        selectedItemColor:   ColorManager.kBlack,
        unselectedItemColor:  ColorManager.ktext,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
             icon: Assets.images.homeIcon.image(
              color: ColorManager.ktext.withOpacity(0.4),
              height: 25.7
             ),
                activeIcon: Assets.images.homeIcon.image(
                  color: ColorManager.kBlack,
                  height: 25.7
                ), 
                label: 'Home'),
              // icon: Assets.images.homeIcon,
              // activeIcon: Assets.icons.houseColor.svg(width: 24, height: 24),
              // label: 'Home'),
          BottomNavigationBarItem(
              icon: Assets.images.financeIcon.image(
                color: ColorManager.ktext,
                height: 25.7
              ),
                activeIcon: Assets.images.financeIcon.image(
                   color: ColorManager.kBlack,
                   height: 25.7
                ),
                label: 'Finance'),
          BottomNavigationBarItem(
               icon: Assets.images.cardIcon.image(
                height: 25.7
               ),
                activeIcon: Assets.images.cardIcon.image(
                  height: 25.7,
                   color: ColorManager.kBlack,

                ),
                label: 'Card' ),
          BottomNavigationBarItem(
              icon: Assets.images.settingsIcon.image(
                color: ColorManager.ktext.withOpacity(0.3),
                height: 25.7
              ),
                activeIcon: Assets.images.settingsIcon.image(
                   color: ColorManager.kBlack,
                  height: 25.7
                ),
                label: 'Settings' )
        ],
      )
          // NavigationBar(
          //   backgroundColor: Colors.transparent, 
          //   elevation: 0,
          //   surfaceTintColor: Colors.transparent,
          //   labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          //   animationDuration: Duration(microseconds: 300),
          //   height: 60,
          //     // indicatorColor: color.AppColor.primaryColor,
          //     // unselectedItemColor: Colors.black,
          //     // height: 60,
          //     selectedIndex: _currentIndex,
          //     onDestinationSelected: (int index){
          //       setState(() {
          //         _currentIndex = index;
          //       });
          //     },
          //     destinations: 
              
          //      [
          //   // NavigationDestination(
          //   //     icon: Assets.images.homeIcon.image(),
          //   //     selectedIcon: Assets.images.homeIcon.image(
          //   //       color: ColorManager.kBlack,
          //   //     ), 
          //   //     label: 'Home'),
          //    BottomNavigationBarItem(
          //       activeIcon: Icon(IconlyBold.home),
          //       icon: Icon(
          //         IconlyLight.home,
          //       ),
          //       label: 'Home'),
                
          //   NavigationDestination(
          //       icon: Assets.images.financeIcon.image(),
          //       selectedIcon: Assets.images.financeIcon.image(
          //          color: ColorManager.kBlack,
          //       ),
          //       label: 'Finance'),
          //   NavigationDestination(
          //      icon: Assets.images.cardIcon.image(),
          //       selectedIcon: Assets.images.financeIcon.image(
          //          color: ColorManager.kBlack,
          //       ),
          //       label: 'Card'),
          //   NavigationDestination(
          //      icon: Assets.images.settingsIcon.image(),
          //       selectedIcon: Assets.images.settingsIcon.image(
          //          color: ColorManager.kBlack,
          //       ),
          //       label: 'Card'),
          // ]),
    );
  }
}



