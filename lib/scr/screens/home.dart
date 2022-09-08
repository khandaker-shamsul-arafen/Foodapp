import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/scr/widgets/categories.dart';
import 'package:food/scr/helpers/commons.dart';

import '../models/featured_products.dart';
import '../widgets/button_navigation_icns.dart';
import '../widgets/custom_Text.dart';
import '../widgets/small_floating_button.dart';

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
              children: [
                Container(
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
                      SmallButton(Icons.favorite),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow[900],
                                  size: 20,
                                ),
                              ),
                              Text("4.5")
                            ],
                          ),
                        ),
                      )
                      /*Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: red,
                            boxShadow: [BoxShadow(
                              blurRadius: 4,
                              offset: Offset(1,1),

                            )]

                          ),

                            child: Icon(Icons.favorite,color: white,size: 15,)),
                      ),*/
                      /* Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: 49,
                          height: 28,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,size: 16,),
                              CustomText(text: "4.5", size: 12, color: black, weight: FontWeight.w500)
                            ],
                          ),
                        ),
                        ),
                      )*/
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.3),
                          ],
                        )),
                  ),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 8, 8),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Pancakes\n",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: white),
                            ),
                            TextSpan(
                              text: "by: ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: white),
                            ),
                            TextSpan(
                              text: "Pizza hut",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: white),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$12.99\n",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: white)),

                          ],
                            style: TextStyle(color: black)

                          ),
                        ),
                      )
                    ],
                  ),
                ))
                /*   Positioned(
                  bottom: 10,
                  left: 12,
                  child:

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CustomText(text: 'Pancakes', size: 18, color: white, weight: FontWeight.w700),
                            CustomText(text: 'by Pizzahut', size: 12, color: white, weight: FontWeight.w700)
                          ],
                        ),

                      ),


                  ),
                Positioned(
                    bottom: 22,
                    right: 18,
                    child:  CustomText(text: "\$12.99", size: 17, color: white, weight: FontWeight.w300)
                )*/
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavicon(name: 'Home', image: 'home.png',),
            BottomNavicon(name: 'Near me', image: 'target.png',),
            BottomNavicon(name: 'Cart', image: 'shopping-bag.png',),

            ]
              ),
            ),
            //  Padding(
            //   padding: const EdgeInsets.all(8.0),
            //       child: Image.asset("images/home.png",width:26,height: 26,),
            //     ),
         // ],
       // ),
      //),
    );
  }
}
