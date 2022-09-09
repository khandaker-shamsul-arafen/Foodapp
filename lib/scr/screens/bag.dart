import 'package:flutter/material.dart';

import '../helpers/commons.dart';
import '../models/products.dart';
import '../widgets/custom_Text.dart';

class Bag extends StatefulWidget {
  const Bag({Key? key}) : super(key: key);

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  Product product = Product(
      "Cereals", "1.jpg", 4.2, "good food", true, 5.99, "spfjspfkapfokk");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () {},
        ),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: "shopping Bag",
          color: black,
          weight: FontWeight.w500,
          size: 16,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "images/shopping-bag.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: grey, offset: Offset(2, 1), blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: CustomText(
                        text: "2",
                        color: red,
                        weight: FontWeight.bold,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(color: grey, offset: Offset(0, 1), blurRadius: 30)
              ]),
              child: Row(

                children: [
                  Image.asset(
                    'images/${product.image}',
                    width: 120,
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: product.name+"\n",
                            style: TextStyle(color: black, fontSize: 20)
                         ),
                            TextSpan(
                      text: "\$"+product.price.toString(),
                      style: TextStyle(color: black, fontSize: 17,fontWeight: FontWeight.bold)
            ),



                      ]
                          )
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
