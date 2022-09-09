
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food/scr/models/products.dart';
import 'package:food/scr/helpers/commons.dart';
import 'package:food/scr/widgets/custom_Text.dart';
import 'package:food/scr/widgets/small_floating_button.dart';

class Details extends StatefulWidget {
   final Product product;
   Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(
                children:[

                  Carousel(
                  images: [
                    AssetImage('images/${widget.product.image}'),
                    AssetImage('images/${widget.product.image}'),
                   // AssetImage('images/${widget.product.image}'),
                  ],
                  dotBgColor: white,
                  dotColor: grey,
                  dotIncreasedColor: red,
                  dotIncreaseSize: 1.2,
                  autoplay: false,

                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton( icon: Icon(Icons.arrow_back_ios,color: black,),
                          onPressed: (){Navigator.pop(context);}
                      ),
                      //Icon(Icons.shopping_bag),
                      Stack(
                        children: [
                          Positioned(
                            right: 3,
                            bottom: -1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color:white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey,
                                      offset: Offset(2,1),
                                      blurRadius: 3
                                  )]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4,right: 4),
                                child: CustomText(text: "2",color: red, weight: FontWeight.bold, size: 16,),
                              ),
                            ),
                          ),
                        //  Padding(
                           // padding: const EdgeInsets.only(right: 8.0),
                            //child:
                            Stack(
                              children: [
                                Image.asset('images/shopping-bag.png',width: 30,height: 30,),



                              ],
                            ),
                        //  ),
                        ],
                      ),

                    ],
                  ),
                  Positioned(
                      right: 14,
                      bottom: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: grey,
                          offset:Offset(2,1),
                          blurRadius: 3)]
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.favorite,
                            size: 16,
                            color: red,
                          ),
                        ),
                      ),
                  ),
                  //)
  ]
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(text: widget.product.name, size: 24, color: black, weight: FontWeight.bold),

                CustomText(text:"\$"+ widget.product.price.toString(), size: 24, color: red, weight: FontWeight.w600),


              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 45,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                          child: CustomText(text: "Add to Bag",color: white,size: 24,weight: FontWeight.normal,),

                        ),

                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                    ),
                  ],
                ),

            ),



          ],
        ),
      ),
    );
  }
}
