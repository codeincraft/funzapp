import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/presentations/Authentication/welcome_back.dart';
import 'package:gap/gap.dart';

class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({super.key});

  @override
  State<PinCodeWidget> createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  String enteredPin = '';
  bool isPinVisible = false;

  /// this widget will be use for each digit
  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 6) {
              enteredPin += number.toString();
            }
          });
        },
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorManager.kWhite,
            border: Border.all(
              color: ColorManager.kbuttonColor,
              width: 0.5
            )
          ),
          child: Text(
            number.toString(),
            style:  TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: ColorManager.kbuttonColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            height: screenHeight,
            width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(40),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>WelcomeBackScreen()));
                  },
                  child: Assets.images.lock.image()),
                Gap(10),
                 Center(
                  child: Text(
                    'Set up your PIN code',
                    style: get17TextStyle(
                      fontSize: 16,
                      color: ColorManager.kbuttonColor
                    )
                  ),
                ),
                Gap(10),
                Text('This pin code will be used to open the\napp and confirm transactions',
                textAlign: TextAlign.center,
                style: get12TextStyle(
                  fontSize: 15
                ),),
                const SizedBox(height: 30),
                            // Gap(50)
                /// pin code area
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.all(6.0),
                        width: isPinVisible ? 50 : 25,
                        height: isPinVisible ? 50 : 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(
                            color: ColorManager.kbuttonColor.withOpacity(0.2)
                          ),
                          color: index < enteredPin.length
                              ? isPinVisible
                                  ? Colors.green
                                  : ColorManager.kbuttonColor
                              : CupertinoColors.activeBlue.withOpacity(0.1),
                        ),
                        child: isPinVisible && index < enteredPin.length
                            ? Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    enteredPin[index],
                                    style: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            : null,
                      );
                    },
                  ),
                ),
                            
                /// visiblity toggle button
                // IconButton(
                //   onPressed: () {
                //     setState(() {
                //       isPinVisible = !isPinVisible;
                //     });
                //   },
                //   icon: Icon(
                //     isPinVisible ? Icons.visibility_off : Icons.visibility,
                //   ),
                // ),
                            
                SizedBox(height: isPinVisible ? 50.0 : 20.0),
                            
                /// digits
                for (var i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => numButton(1 + 3 * i + index),
                      ).toList(),
                    ),
                  ),
                            
                /// 0 digit with back remove
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextButton(onPressed: null, child: SizedBox()),
                        numButton(0),
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                if (enteredPin.isNotEmpty) {
                                  enteredPin =
                                      enteredPin.substring(0, enteredPin.length - 1);
                                }
                              },
                            );
                          },
                          child: Assets.images.numbers.image(
                            height: 35
                          ),
                          
                          // const Icon(
                          //   Icons.cancel_outlined,
                          //   color: Colors.black,
                          //   size: 24,
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
                            
                            
                /// reset button
                // TextButton(
                //   onPressed: () {
                //     setState(() {
                //       enteredPin = '';
                //     });
                //   },
                //   child: const Text(
                //     'Reset',
                //     style: TextStyle(
                //       fontSize: 20,
                //       color: Colors.black,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}