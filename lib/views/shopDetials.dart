import 'package:e_commerce/data/data_provider/product_data.dart';
import 'package:e_commerce/data/models/models.dart';
import 'package:flutter/material.dart';

import '../imageslide.dart';


class ShopDetails extends StatelessWidget {
  const ShopDetails({Key? key,required this.product}) : super(key: key,);
final Welcome product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,
         title:Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(height: 35,width: 35,decoration: BoxDecoration(
              //   color: Colors.grey,borderRadius: BorderRadius.circular(5),
              // ),child: Icon(Icons.arrow_back),),
              Text('Detail Product'),
              Container(height: 35,width: 35,decoration: BoxDecoration(
                color: Colors.grey.shade200,borderRadius: BorderRadius.circular(5),
              ),
                child: Icon(Icons.favorite,color: Colors.red,),
              )],
        ),
         ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('\$',style: TextStyle(color: Colors.orangeAccent),),
                  Text('243.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                ],
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                child: Text('+ Add to Chart',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            ImageSlide(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('OUTER',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                  Text('Jas OverSized',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Text('Save 20%'),
                        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)),
                      ),
                      Row(
                        children: [
                          Icon((Icons.star_rate_rounded),color: Colors.orangeAccent,),
                          Text('4'),
                          Text(' (342 Reviews)')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Information',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
Text(product.description),


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
