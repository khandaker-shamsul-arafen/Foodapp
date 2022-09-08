import 'package:flutter/material.dart';
import 'package:food/scr/models/products.dart';

import '../helpers/commons.dart';
import '../helpers/screen_navigation.dart';
import '../screens/details.dart';
import '../widgets/custom_Text.dart';

List<Product> productList = [
  Product("Cereals", "1.jpg", 4.2, "good food", true, 5.99),
  Product("Ce", "2.jpg", 4.8, "delicious", false, 6.99),
  Product("Cereals", "3.jpg", 4.7, "testy", false, 7.99),
  Product("Cereals", "4.jpeg", 4.6, "Natural", true, 8.99),
  Product("Cereals", "5.jpg", 4.5, "good ", true, 9.99),

];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                   changeScreen(context,Details(product: productList[index],));
                  },
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(color: grey, offset: Offset(4, 4), blurRadius: 4)
                    ],borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Image.asset(
                              "images/${productList[index].image}",
                              fit: BoxFit.fitHeight,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(
                                  text: "${productList[index].name}",
                                  size: 16,
                                  color: Colors.amber,
                                  weight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: grey,
                                          offset: Offset(1, 1),
                                          blurRadius: 4)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: productList[index].wishList
                                      ? Icon(
                                          Icons.favorite,
                                          size: 16,
                                          color: red,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          size: 16,
                                          color: red,
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomText(
                                      text: "${productList[index].rating}",
                                      size: 12,
                                      color: black,
                                      weight: FontWeight.normal),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(Icons.star, color: red, size: 16),
                                Icon(Icons.star, color: red, size: 16),
                                Icon(Icons.star, color: red, size: 16),
                                Icon(Icons.star, color: red, size: 16),
                                Icon(Icons.star, color: grey, size: 16),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomText(
                                  text: "${productList[index].price}",
                                  size: 12,
                                  color: black,
                                  weight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
            )
    );
  }
}
