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
              height: 500,
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
                    child: ListView(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Assets.images.nigeria.image()),
                          title: Text(
                            'Nigerian Naira',
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('N322,830.92'),
                          trailing: Icon(Icons.check_circle, color: Colors.green,),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Assets.images.america.image()),
                          title: Text(
                            'United State Dollar',
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('\$0.00'),
                          // trailing: Icon(Icons.check_circle, color: Colors.green,),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Assets.images.kenya.image()),
                          title: Text(
                            'Kenyan Shilling',
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('K0.00'),
                          // trailing: Icon(Icons.check_circle, color: Colors.green,),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Assets.images.ghana.image()),
                          title: Text(
                            'Ghana Cedis',
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('C0.00'),
                          // trailing: Icon(Icons.check_circle, color: Colors.green,),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Assets.images.southAfrica.image()),
                          title: Text(
                            'South Africa Rand',
                            style:
                                get14TextStyle(color: ColorManager.kTitleText,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('R0.00'),
                          // trailing: Icon(Icons.check_circle, color: Colors.green,),
                        ),
                      ],
                    ),
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
