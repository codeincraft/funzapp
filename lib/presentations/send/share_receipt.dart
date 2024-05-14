import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/widgets/custom_appbar.dart';

class ShareReceipt extends StatelessWidget {
  const ShareReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kScaffoldB,
        appBar: CustomAppBar(
          title: Text(
            'Send Money',
            style: get17TextStyle(fontSize: 20),
          ),
          actions: [
            Icon(
              Icons.help_outline_outlined,
              color: ColorManager.kbuttonColor,
            ),
          ],
        ),
    );
  }
}