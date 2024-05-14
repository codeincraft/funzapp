import 'package:flutter/material.dart';
import 'package:funz/constants/style_manager.dart';

class AppButton extends StatelessWidget {
  VoidCallback? onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  final String text;
  double? size;
  Color? borderColor;
  double? height;
  double? width;
  double? fontsize;
  EdgeInsets? padding;
  FontWeight? fontWeight = FontWeight.bold;

  AppButton({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderRadius,
    this.textColor,
    required this.text,
    this.size,
    this.borderColor,
    this.height,
    this.width,
    this.fontsize,
    this.padding,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: get16TextStyle(
                  fontSize: fontsize ?? 14,
                  fontWeight: fontWeight,
                  color: textColor,
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
