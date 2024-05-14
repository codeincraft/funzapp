import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/value_manager.dart';
// // import 'package:grab_x/presentation/resources/color_manager.dart';

// import 'image_manager.dart';
// import 'values_manager.dart';

TextStyle _getTextStyle(
    {required double fontSize,
    required FontWeight fontWeight,
    required Color color}) {
  return TextStyle(
    // fontFamily: "fontFamily",
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

//
TextStyle get16TextStyle({
  double fontSize = 16,
  Color? color,
  FontWeight? fontWeight,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.ktext,
    fontWeight: fontWeight ?? FontWeight.w300,
  );
}

TextStyle get18TextStyle({double fontSize = FontSize.s18, Color? color}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: FontWeight.w700,
  );
}

TextStyle getPrefixTextStyle({double fontSize = FontSize.s16, Color? color}) {
  return get16TextStyle()
      .copyWith(fontWeight: FontWeight.w400, color: ColorManager.kborder);
}

TextStyle get14TextStyle(
    {double fontSize = FontSize.s14, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: fontWeight ?? FontWeight.w400,
  );
}

TextStyle get12TextStyle({double fontSize = FontSize.s12, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: fontWeight ??FontWeight.w400,
  );
}

TextStyle get17TextStyle({double fontSize = FontSize.s24, Color? color}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: FontWeight.w600,
  );
}

TextStyle get28TextStyle({double fontSize = 28, Color? color}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: FontWeight.w700,
  );
}

TextStyle get32TextStyle(
    {double fontSize = FontSize.s32, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kBlack,
    fontWeight: fontWeight ?? FontWeight.w700,
  );
}

TextStyle get20TextStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize ?? FontSize.s20,
    color: color ?? ColorManager.kBlack,
    fontWeight: fontWeight ?? FontWeight.w600,
  );
}

TextStyle getHintTextStyle(
    {double fontSize = FontSize.s14, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kTitleText,
    fontWeight: fontWeight ?? FontWeight.w400,
  );
}

TextStyle getBtnTextStyle(
    {double fontSize = FontSize.s16, Color? color, FontWeight? fontWeight}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color ?? ColorManager.kbackground,
    fontWeight: fontWeight ?? FontWeight.w500,
  );
}

InputDecoration getSearchInputDecoration({
  String? hintText,
  Widget? suffixIcon,
  Widget? prefixIcon,
  EdgeInsetsGeometry? padding,
  TextStyle? hintTextStyle,
}) =>
    InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          width: 1.2,
          color: Color(0xffF4F4F4),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(width: 1.2, color: Color(0xffF4F4F4)),
      ),
      border: InputBorder.none,
      hintText: hintText ?? 'Search',
      hintStyle: getHintTextStyle(),
      suffixIcon: suffixIcon ??
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: Container(

                    width: 20, height: 20,
                ),
                // Image.asset(ImageManager.kSearchIcon,
              ),
            ),
          ),
      contentPadding:
          padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      fillColor: ColorManager.kbackground,
      filled: true,
      prefixIcon: prefixIcon,
    );

