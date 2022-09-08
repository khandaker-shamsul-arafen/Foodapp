import 'package:flutter/material.dart';

import '../models/category.dart';
import '../helpers/commons.dart';
import 'custom_Text.dart';

List<Category>categoriesList =[
  Category(name:"Salad",image:"salad.png"),
  Category(name:"Sandwitch",image:"sandwich.png"),
  Category(name:"Steak",image:"steak.png"),
  Category(name:"Pizza",image:"pizza.jpg"),
  Category(name:"Icecream",image:"ice-cream.png"),

];
class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      height: 120,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        //itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:<Widget> [
                Container(
                  width:120,
                  decoration:  BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: red ,
                            offset:  Offset(1,2),
                            blurRadius: 4
                        )]
                  ),
                  child: AspectRatio(aspectRatio: 5/3,
                      child: Image.asset("images/${categoriesList[index].image}",fit: BoxFit.fitHeight,)),
                ),
                SizedBox(height:5 ,),
                CustomText(text: categoriesList[index].name, size: 16, color: black, weight: FontWeight.normal)
              ],
            ),
          );

        },
      ),
    );
  }
  
}