import 'package:flutter/material.dart';
import 'package:funz/widgets/app_text.dart';

class AirtimeButton extends StatelessWidget {
  String text;
  final Color textColor;
  final Color backgroundColor;
  double width;
  double height;
  final Color? borderColor;

   AirtimeButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.width,
    required this.height,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Center(
        child: FittedBox(
          child: AirtimeText(text: text, color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 13,),
        ),
      ),
      
    );
  }
}
