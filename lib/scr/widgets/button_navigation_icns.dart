import 'package:flutter/material.dart';

import '../helpers/commons.dart';
import 'custom_Text.dart';


class BottomNavicon extends StatelessWidget {
   final String image;
   final String name;
   //final Function onTap;

  //const BottomNavicon( { required Key key, required this.image, required this.name} ):super(key:key);
   final Function onTap;

  const BottomNavicon({super.key, required this.image, required this.name, required this.onTap});

  // const BottomNavIcon({Key key, this.image, this.name, this.onTap}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          onTap();
        },
        child: Column(
        children: [
        Image.asset(
        "images/$image",
        width: 20,
        height: 20,
    ),
    SizedBox(height: 2,),
    CustomText(text:"$name", size:16, weight: FontWeight.w300, color: white,),
    ],
    ),
      ),
    );
  }
}

