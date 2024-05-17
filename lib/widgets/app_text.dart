import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AirtimeText extends StatelessWidget {
  double size;
  final TextAlign? textAlign;
  final String text;
  final Color color;
  final fontFamily;
  final  fontWeight;
  final fontStyle;
  double? fontSize;
   AirtimeText({super.key, 
  required this.text, 
  this.textAlign,
  this.fontSize,
  this.fontFamily,
  this.fontWeight,
   this.color = Colors.black,
  this.size = 30,
  this.fontStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:
      TextStyle(
    fontFamily: "Satoshi",
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  )
    );
  }
}