import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/home_screen/currency_view.dart';
import 'package:funz/presentations/home_screen/more_view.dart';
import 'package:funz/presentations/home_screen/top_up_screen.dart';
import 'package:funz/widgets/debit_card.dart';
import 'package:gap/gap.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 231,
      width: double.infinity,
      child: Stack(children: [
        DebitCard(),
        Positioned(
          top: 15,
          left: 90,
          right: 90,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  barrierColor: ColorManager.kbackgroundblue.withOpacity(0.5),
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  builder: (BuildContext context) {
                    return CurrencyView();
                  });
            },
            child: Container(
              padding: EdgeInsets.all(5),
              height: 40,
              width: 148,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kIconB,
                  border: Border.all(
                    width: 2,
                    color: ColorManager.kbackground,
                  )),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage(Assets.images.nigeria.path),
                  ),
                  // Gap(5),
                  Spacer(),
                  Text(
                    'NG Naira',
                    style: get16TextStyle(
                        color: ColorManager.kTitleText,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Image(image: AssetImage(Assets.images.dropDown.path))
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wallet Balance',
                  style: get12TextStyle(
                      color: ColorManager.kbackground,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 305,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      isVisible
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'N322,830',
                                  style: get12TextStyle(
                                      color: ColorManager.kbackground,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  '.92',
                                  style: get12TextStyle(
                                      color: ColorManager.kbackground
                                          .withOpacity(0.7),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Text(
                              '************',
                              style: get32TextStyle(
                                  color: ColorManager.kbackground),
                            ),
                      Spacer(),
                      IconButton(
                        icon: isVisible
                            ? Image(
                                image:
                                    AssetImage(Assets.images.visibility.path))
                            : Icon(
                                Icons.visibility_outlined,
                                color: ColorManager.kIconB,
                              ),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 335,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          barrierColor:
                              ColorManager.kbackgroundblue.withOpacity(0.5),
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          builder: (BuildContext context) {
                            return TopUp();
                          });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(Assets.images.topUp.path),
                            height: 20,
                          ),
                          Gap(05),
                          Text(
                            'Top Up',
                            style: get28TextStyle(
                                fontSize: 15, color: ColorManager.kbackground),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesManager.swapMoney);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(Assets.images.swap.path),
                            height: 20,
                          ),
                          Gap(05),
                          Text(
                            'Swap',
                            style: get28TextStyle(
                              fontSize: 15,
                              color: ColorManager.kbackground,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          barrierColor:
                              ColorManager.kbackgroundblue.withOpacity(0.5),
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          builder: (BuildContext context) {
                            return MoreView();
                          });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(Assets.images.more.path),
                            height: 20,
                          ),
                          Gap(05),
                          Text(
                            'More',
                            style: get28TextStyle(
                                fontSize: 17, color: ColorManager.kbackground),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
