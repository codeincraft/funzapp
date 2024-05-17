import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:gap/gap.dart';

class SelectNetworkProvider extends StatefulWidget {
  const SelectNetworkProvider({super.key});

  @override
  State<SelectNetworkProvider> createState() => _SelectNetworkProviderState();
}

class _SelectNetworkProviderState extends State<SelectNetworkProvider> {
  List img = [Assets.images.mtn.path, Assets.images.airtel.path, Assets.images.glo.path];
  List<String> countryName = ['MTN', 'Airtel', 'Glo'];
  String dollar = '\$\\0.00';
  // List<String> amount = ['N322,830.00', '\$\0.00' , 'K0.00', 'C0.00', 'R0.00'];
  int selectedIndex = 0;
  void _handleContainerTap(int index ) {
    setState(() {
      selectedIndex = index;
    });
  }
   var _status = [
    'Choose a Network Service Provider',
    'MTN, Nigeria',
    'Glo, Nigeria',
    'Airtel, Nigeria',
  ];
  var _currentStatusSelected = 'Choose a Network Service Provider';
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.45,
      maxChildSize: 0.45,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            controller: scrollController,
            child: Container(
              height: 450,
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
                    'Slect Network Provider',
                    style: get18TextStyle(color: ColorManager.kTitleText),
                  ),
                  Expanded(
                      child: Column(
                        children: List.generate(3, (index) {
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
                          // subtitle: Text(amount[index] ),
                          trailing: Icon(
                            Icons.check_circle,
                             color: selectedIndex == index  ? Colors.green : Colors.transparent,),
                          );
                        },
                      ),
                      )
                  ),
                  Gap(20),
                  Gap(20)
                ],
              ),
            ));
      }),
    );
    
  }
    void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      this._currentStatusSelected = newValueSelected;
    });
  }
}
