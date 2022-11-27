import 'package:e_commerce/data/models/models.dart';
import 'package:e_commerce/data/repository/product_repository.dart';
import 'package:e_commerce/styles/font_style.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/styles/styles.dart';
import '../views/views.dart';


class ProductCard extends StatefulWidget {
  final Welcome product;

   ProductCard({
    Key? key,required this.product,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  Color activeColor=Colors.red;

  Color inactiveColor=Colors.white;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200),borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            GestureDetector( onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ShopDetails(product:widget.product,);
              }));
            },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(widget.product.image), fit: BoxFit.fill)),
                    height: 200,
                    width: 200,
                  ),
                  Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text('-${widget.product.category}',
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.product.title,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 2.0),
                        Text('#'+widget.product.price.toString()),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){


                    },
                    child: Container(height: 30,width: 30,decoration: BoxDecoration(
                      color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20),
                    ),child: GestureDetector(onTap: (){
                      ProductRepository().addFavorite(product: widget.product);
                      setState(() {
                      inactiveColor=activeColor;

                    });},child: Icon(Icons.favorite,color: inactiveColor,))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
