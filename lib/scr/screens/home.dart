import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/scr/widgets/categories.dart';
import 'package:food/scr/widgets/commons.dart';
import 'package:food/scr/widgets/custom_Text.dart';

import '../models/featured_products.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What would you like to eat",
                    size: 18,
                    color: black,
                    weight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(color: grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find your  Resturent",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            //SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Popular Food",
                  size: 20,
                  color: grey,
                  weight: FontWeight.normal),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: "Popular Food",
                  size: 20,
                  color: grey,
                  weight: FontWeight.normal),
            ),
            Stack(
              children: [Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/food.jpg")),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //  SmallButton
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,color: red,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )
                    ],
                  ),
                )
            ],),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/home.png",width:26,height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/target.png",width:26,height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/shopping-bag.png",width:26,height: 26,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/home.png",width:26,height: 26,),
            ),

          ],
        ),
      ),
    );
  }
}
