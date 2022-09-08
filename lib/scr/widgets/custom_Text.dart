import 'package:flutter/material.dart';
import 'package:food/scr/helpers/commons.dart';
class CustomText extends StatelessWidget{
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

   CustomText({required this.text,  required this.size,  required this.color,  required this.weight});
  //CustomText( this.text,this.size,this.color,this.weight);

 // const CustomText({required this.text, required this.size, required this.color, required this.weight});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //return Text(text,style: TextStyle(fontSize: size ??16,color: color??black , fontWeight: FontWeight.normal),);
    return Text(text,style: TextStyle(fontSize: size,color: color,fontWeight: weight),);

  }

}