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
  List<String> countryName = ['Nigerian Naira', 'United States Dollar', 'Kenyan Shiling', 'Ghana Cedis', 'South African Rand'];
  String dollar = '\$\\0.00';
  List<String> amount = ['N322,830.92', '\$\0.00' , 'K0.00', 'C0.00', 'R0.00'];
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
              height: 590,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.kbackground,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40), topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Scroll Controller
                  Assets.images.slideicon.image(
                    height: 7
                  ),
                 
                  Gap(20),
                  Text(
                    'Available Currencies',
                    style: get18TextStyle(color: ColorManager.kbuttonColor),
                  ),
                  SizedBox(
                    height: 390,
                    width: double.infinity,
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
                              get14TextStyle(color: ColorManager.kbuttonColor,
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
                    ),
                  ),
                  // Gap(20),
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
                          color: ColorManager.kbuttonColor
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
