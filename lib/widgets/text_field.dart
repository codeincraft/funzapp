// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';

class AppTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final String text;
  final bool obscureText;
  TextInputType? keyboardType;
  final suffixIcon;
  final suffix;
  final onSaved;
  final validator;
  final String? initialValue;
  final prefixIcon;
  final Color? fillColor;
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? focusColor;
  final Color? enabledBorderColor;
  final String? errorText;
  final VoidCallback? onTap;
  final onChanged;
  final AutovalidateMode? autovalidateMode;
  List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  EdgeInsets? padding;
  EdgeInsets? containerPadding;

  AppTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.text,
      required this.obscureText,
      this.keyboardType,
      this.inputFormatters,
      this.suffixIcon,
      this.prefixIcon,
      this.suffix,
      this.onSaved,
      this.validator,
      this.initialValue,
      this.fillColor,
      this.borderColor,
      this.enabledBorderColor,
      this.backgroundColor,
      this.errorText,
      this.onTap,
      this.onChanged,
      this.maxLines,
      this.autovalidateMode,
      this.padding,
      this.color,
      this.focusColor,
      this.containerPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(text,
          //     style: TextStyle(
          //         fontSize: 14,
          //         wordSpacing: 1,
          //         fontWeight: FontWeight.w400,
          //         color: ColorManager.ktext),
          //     maxLines: 2),
          // SizedBox(
          //   height: 5,
          // ),
          Container(
            padding: containerPadding ?? EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundColor ?? ColorManager.kbackground),
            child: TextFormField(
              scrollPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              maxLines: maxLines ?? 1,
              onTap: onTap,
              autovalidateMode: autovalidateMode,
              onSaved: onSaved,
              onChanged: onChanged,
              initialValue: initialValue,
              validator: validator,
              keyboardType: keyboardType,
              obscureText: obscureText,
              controller: controller,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                  contentPadding: padding,
                  isDense: true,
                  // errorText: errorText,
                  suffixIcon: suffixIcon,
                  suffix: suffix,
                  prefixIcon: prefixIcon,
                  prefixIconConstraints:
                      BoxConstraints.tight(const Size(20, 20)),
                  alignLabelWithHint: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      color: color ?? Colors.transparent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      color: color ?? Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(
                      color: focusColor ?? Colors.transparent,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: TextStyle(
                      fontSize: 13,
                      wordSpacing: 0,
                      fontWeight: FontWeight.w400,
                      color: ColorManager.ktext),
                  fillColor: fillColor ?? Colors.red),
              enabled: true,
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextFormField extends StatelessWidget {
  final controller;
  final String? hintText;
  final double? fontSize;
  final String text;
  final bool? obscureText;
  TextInputType? keyboardType;
  final suffixIcon;
  final suffix;
  final onSaved;
  final validator;
  final String? initialValue;
  final prefixIcon;
  final Color? fillColor;
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? focusColor;
  final Color? enabledBorderColor;
  final String? errorText;
  final VoidCallback? onTap;
  final onChanged;
  final AutovalidateMode? autovalidateMode;
  List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  EdgeInsets? padding;
  EdgeInsets? containerPadding;

  AppTextFormField(
      {super.key,
      this.controller,
      this.hintText,
      this.fontSize,
      required this.text,
      this.obscureText,
      this.keyboardType,
      this.inputFormatters,
      this.suffixIcon,
      this.prefixIcon,
      this.suffix,
      this.onSaved,
      this.validator,
      this.initialValue,
      this.fillColor,
      this.borderColor,
      this.enabledBorderColor,
      this.backgroundColor,
      this.errorText,
      this.onTap,
      this.onChanged,
      this.maxLines,
      this.autovalidateMode,
      this.padding,
      this.color,
      this.focusColor,
      this.containerPadding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: get14TextStyle(
                color: ColorManager.kbuttonColor,
                fontSize: fontSize ?? 13,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 35,
              child: TextField(
              
                decoration: InputDecoration(
                  suffixIconConstraints: BoxConstraints(),
                  suffixIcon: suffixIcon,
                  hintText: '',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:  11,
                    color: ColorManager.kbuttonColor,
                  ), // Customize hint text color if needed
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.kbuttonColor,
                      width: 1,
                    ),
                  ), 
                   enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorManager.kbuttonColor,
            ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
             color: ColorManager.kbuttonColor,
            ),
        ),// Remove the border
                  filled: false, // Remove background color
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                      horizontal: 0), // Adjust padding as needed
                ),
                // keyboardType: TextInputType
                //     .number
                // , // Set keyboard type to number
              ),
            ),
          ],
        ));
  }
}
