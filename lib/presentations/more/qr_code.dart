import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:gap/gap.dart';
import 'package:slide_action/slide_action.dart';

class QRCodeScrean extends StatefulWidget {
  const QRCodeScrean({super.key});

  @override
  State<QRCodeScrean> createState() => _QRCodeScreanState();
}

class _QRCodeScreanState extends State<QRCodeScrean> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
      appBar: CustomAppBar(
        title: Text(
          'Use QR Code',
          style: get17TextStyle(
            fontSize: 17,
            color: ColorManager.kTitleText
          ),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SlideAction(
                trackHeight: 40,
                stretchThumb: true,
                thumbWidth: 200,
                trackBuilder: (context, state) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorManager.kWhite,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      width: 230,
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Scan Code',
                        style: get17TextStyle(fontSize: 15),
                        // "Thumb fraction: ${state.thumbFractionalPosition.toStringAsPrecision(1)}",
                      ),
                    ),
                  );
                },
                thumbBuilder: (context, state) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: ColorManager.kbackground,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                        child: Text(
                      'My Code',
                      style: get17TextStyle(fontSize: 15),
                    )),
                  );
                },
                action: () {}),
                Gap(50),
                Assets.images.profile.image(),
                Gap(10),
                Text('Arinze Usman Ade', style: get17TextStyle(fontSize: 15,
                 color: ColorManager.kTitleText),),
                Gap(5),
                Text('Scan QR code below to pay @Arus123', 
                style: get14TextStyle(fontSize: 15),
                ),
                Gap(30),
                Assets.images.qrcode.image()
          ],
        ),
      ),
    );
  }
}
