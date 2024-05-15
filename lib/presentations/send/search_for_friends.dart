import 'package:flutter/material.dart';
import 'package:funz/constants/color_manager.dart';
import 'package:funz/constants/style_manager.dart';
import 'package:funz/gen/assets.gen.dart';
import 'package:funz/widgets/custom_appbar.dart';
import 'package:funz/widgets/text_field.dart';
import 'package:gap/gap.dart';

class SearchForFriends extends StatefulWidget {
  const SearchForFriends({super.key});

  @override
  State<SearchForFriends> createState() => _SearchForFriendsState();
}

class _SearchForFriendsState extends State<SearchForFriends> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
      final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorManager.kScaffoldB,
        appBar: CustomAppBar(
          title: Text(
            'Send Money',
            style: get17TextStyle(fontSize: 17),
          ),
          actions: [
            Icon(
              Icons.help_outline_outlined,
              color: ColorManager.kbuttonColor,
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                child: AppTextField(
                  controller: _controller,
                   hintText: 'Search by Phone number, Name, or Funz ID', 
                   text: '', 
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                   prefixIcon: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:  2.0),
                     child: Icon(Icons.search_sharp),
                   ),
                   obscureText: false),
              ),
              Gap(50),
              Assets.images.bro.image(
                height: 150
              )
            ],
          ),
        ),
        ),
        );
  }
}