import 'package:flutter/material.dart';

import '../helpers/commons.dart';
import 'custom_Text.dart';


class BottomNavicon extends StatelessWidget {
   final String image;
   final String name;

  const BottomNavicon({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: [
      Image.asset(
      "images/$image",
      width: 26,
      height: 26,
    ),
    SizedBox(height: 5,),
    CustomText(text:"$name", size:16, weight: FontWeight.w300, color: white,),
    ],
    ),
    );
  }
}
