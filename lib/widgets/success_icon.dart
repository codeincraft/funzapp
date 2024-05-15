import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';

class SuccessIcon extends StatelessWidget {
  final double? height;
  final double? width; 
  final double? radius; 
  final double? iconSized; 
   SuccessIcon({super.key,
  this.height,
  this.radius,
  this.iconSized,
  this.width
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: EdgeInsets.all(10),
                    height: height ?? 120,
                    width: width  ?? 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorManager.kTitleText.withOpacity(0.1)
                      ),
                      shape: BoxShape.circle,
                    color: ColorManager.kWhite.withOpacity(0.3),
                    ),
                    child: CircleAvatar(
                      radius: radius,
                    backgroundColor: ColorManager.kIconB,
                    child: Icon(Icons.check_circle, color: ColorManager.kbackgroundblue,
                    size: iconSized ?? 50,
                    ),
                    ),
                  );
  }
}