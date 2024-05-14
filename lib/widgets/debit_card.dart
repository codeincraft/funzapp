import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
                height: 231,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorManager.kbackgroundblue
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 231,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight:Radius.circular(25),
                          topRight:Radius.circular(25)),
                         
                          color: ColorManager.kBlueshade2
                        ),
                      ),
                    ),
                   
                    Positioned(
                      right: -20,
                      top: -20,
                      bottom: -20,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25)
                          )
                        ),
                        // clipper: OvalLeftBorderClipper(),
                        child: Container(
                          height: 231,
                          width: 250,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(
                          //   topRight: Radius.circular(25),
                          //   bottomRight: Radius.circular(25)
                          // ),
                          color: ColorManager.kBlueshade2,
                          shape: BoxShape.circle
                        ),
                                            ),
                      )),
                       Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight:Radius.circular(25),
                          topRight:Radius.circular(25)),
                         
                          color: ColorManager.kBlueshade3
                        ),
                      ),
                    ),
                      
                    Positioned(
                      right: -15,
                      top: 40,
                      bottom: -20,
                      child: ClipPath(
                        // clipper: OvalLeftBorderClipper(),
                        child: Container(
                          height: 100,
                          width: 200,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(
                          //   topRight: Radius.circular(100),
                          //   topLeft: Radius.circular(130),
                          //   bottomRight: Radius.circular(25),
                          //   bottomLeft: Radius.circular(50)
                          // ),
                          color: ColorManager.kBlueshade3,
                          shape: BoxShape.circle
                        ),
                                            ),
                      ))
                  ],
                ),
              );
  }
}