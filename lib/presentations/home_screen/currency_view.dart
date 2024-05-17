import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class CurrencyView extends StatefulWidget {
  const CurrencyView({super.key});

  @override
  State<CurrencyView> createState() => _CurrencyViewState();
}

class _CurrencyViewState extends State<CurrencyView> {
  List img = [Assets.images.nigeria.path, Assets.images.america.path, Assets.images.kenya.path, Assets.images.ghana.path, Assets.images.southAfrica.path];
  List<String> countryName = ['Nigeria Naira', 'United States Dollar', 'Kenyan Shiling', 'Ghanan Cedis', 'South Africa Rand'];
  String dollar = '\$\\0.00';
  List<String> amount = ['N322,830.00', '\$\0.00' , 'K0.00', 'C0.00', 'R0.00'];
  int selectedIndex = 0;
  //  List<Color> containerColors = List<Color>.filled(6, ColorManager.kStroke);
  // List<Color> colorList = [ColorManager.k];
    // Method to handle container tap and update the color
  void _handleContainerTap(int index ) {
    setState(() {
      // containerColors[index] = containerColors[index] == ColorManager.kStroke
      //     ? Colors.transparent
      //     : ColorManager.kStroke;
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.76,
      maxChildSize: 0.76,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 520,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.kbackground,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Scroll Controller
                  Container(
                    height: 6,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorManager.kborder),
                  ),
                  Gap(20),
                  Text(
                    'Available Currencies',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Expanded(
                      child: Column(
                        children: List.generate(5, (index) {
                          return ListTile(
                                 onTap: () => _handleContainerTap(index),
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image(image: AssetImage(img[index]))),
                          title: Text(
                            countryName[index],
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(amount[index] ),
                          trailing: Icon(
                            Icons.check_circle,
                             color: selectedIndex == index  ? Colors.green : Colors.transparent,),
                          );
                        },
                      ),
                      )
                    // child: ListView(
                    //   children: [
                    //     ListTile(
                    //       onTap: () => _handleContainerTap(index),
                    //       leading: CircleAvatar(
                    //           backgroundColor: Colors.transparent,
                    //           child: Assets.images.nigeria.image()),
                    //       title: Text(
                    //         'Nigerian Naira',
                    //         style:
                    //             get14TextStyle(color: ColorManager.kTitleText,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       subtitle: Text('N322,830.92'),
                    //       trailing: Icon(
                    //         Icons.check_circle,
                    //          color: selectedIndex == index ? Colors.green : Colors.transparent,),
                    //     ),
                    //     ListTile(
                    //       leading: CircleAvatar(
                    //           backgroundColor: Colors.transparent,
                    //           child: Assets.images.america.image()),
                    //       title: Text(
                    //         'United State Dollar',
                    //         style:
                    //             get14TextStyle(color: ColorManager.kTitleText,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       subtitle: Text('\$0.00'),
                    //       // trailing: Icon(Icons.check_circle, color: Colors.green,),
                    //     ),
                    //     ListTile(
                    //       leading: CircleAvatar(
                    //           backgroundColor: Colors.transparent,
                    //           child: Assets.images.kenya.image()),
                    //       title: Text(
                    //         'Kenyan Shilling',
                    //         style:
                    //             get14TextStyle(color: ColorManager.kTitleText,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       subtitle: Text('K0.00'),
                    //       // trailing: Icon(Icons.check_circle, color: Colors.green,),
                    //     ),
                    //     ListTile(
                    //       leading: CircleAvatar(
                    //           backgroundColor: Colors.transparent,
                    //           child: Assets.images.ghana.image()),
                    //       title: Text(
                    //         'Ghana Cedis',
                    //         style:
                    //             get14TextStyle(color: ColorManager.kTitleText,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       subtitle: Text('C0.00'),
                    //       // trailing: Icon(Icons.check_circle, color: Colors.green,),
                    //     ),
                    //     ListTile(
                    //       leading: CircleAvatar(
                    //           backgroundColor: Colors.transparent,
                    //           child: Assets.images.southAfrica.image()),
                    //       title: Text(
                    //         'South Africa Rand',
                    //         style:
                    //             get14TextStyle(color: ColorManager.kTitleText,
                    //             fontSize: 15,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       subtitle: Text('R0.00'),
                    //       // trailing: Icon(Icons.check_circle, color: Colors.green,),
                    //     ),
                    //   ],
                    // ),
                  ),
                  Gap(20),
                  Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.add.image(),
                        Gap(5),
                        Text('Add more currencies', style: get14TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.kTitleText
                        ),)
                      ],
                    ),
                  ),
                  Gap(20)
                ],
              ),
            ));
      }),
    );
    ;
  }
}
