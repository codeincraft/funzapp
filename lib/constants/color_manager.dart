import 'package:flutter/material.dart';

class ColorManager {
  // Main
  static Color kbuttonColor = HexColor.fromHex("#000574");
  static Color kbackground = HexColor.fromHex("#FFFFFF");
  static Color klightBlue = HexColor.fromHex("#F0F6FF");
  static Color kbackgroundblue = HexColor.fromHex("#000574");
  static Color kborder = HexColor.fromHex("#848484");
  static Color kTitleText = HexColor.fromHex("#021B41");
  static Color ktext = HexColor.fromHex("#ADADAD");
  static Color kBlack = HexColor.fromHex("#000000");
  static Color kBlueshade2 = HexColor.fromHex("#0059DE");
  static Color kBlueshade3 = HexColor.fromHex("#014EC1");
  static Color kIconBackground = HexColor.fromHex("#0067F3");
  static Color kIconB = HexColor.fromHex("#C7DCF8");
  static Color kStroke = HexColor.fromHex("#021B41");
  static Color kWhite = HexColor.fromHex("#F0F6FF");
  static Color kScaffoldB = HexColor.fromHex("#F9F9F9");

  

  // static Color getWalletStatusColor(String status) =>
  //     status.toLowerCase() == "completed"
  //         ? ColorManager.kSuccess
  //         : status.toLowerCase() == "declined"
  //             ? ColorManager.kError
  //             : ColorManager.kYellow;
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
