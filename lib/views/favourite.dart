import 'package:e_commerce/data/data_provider/product_data.dart';
import 'package:e_commerce/data/models/models.dart';
import 'package:e_commerce/data/repository/product_repository.dart';
import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,elevation: 0,backgroundColor: Colors.transparent,
        leading: GestureDetector( onTap:(){Navigator.pop(context);},child:  Icon(Icons.arrow_back)),
        title:Container(
          child: const Text('Main bar'),
        ),
            actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete),
            ),]
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(30.0),
      //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Column(
      //           children: [
      //             Text('Total Price'),
      //             Row(
      //               children: [
      //                 Text('\$',style: TextStyle(color: Colors.orangeAccent),),
      //                 Text('243.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      //               ],
      //             ),
      //           ],
      //         ),
      //         Container(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
      //           child: Row(
      //             children: [
      //               Icon(Icons.shopping_cart),
      //               SizedBox(width: 5,),
      //               Text('Pay Now',style: TextStyle(color: Colors.white),),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Checkout',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  itemCount: favourite.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return FavouriteCard(
                      product: favourite[index],
                      index: index,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteCard extends StatefulWidget {
  final Welcome product;
  final int index;

  FavouriteCard({
    required this.product,
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  int initialQuantity = 0;

  void quantityDecrease() {
    setState(() {
      initialQuantity--;
    });
  }

  void quantityIncrease() {
    setState(() {
      initialQuantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Image(image: NetworkImage(widget.product.image))),
                  Expanded(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(widget.product.title),
                        Text(widget.product.price.toString())
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Container(child: const Text('-',style: TextStyle(fontSize: 30),)),
                        onTap: quantityDecrease,
                      ),
                      Container(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(initialQuantity.toString(),style: TextStyle(fontSize: 30),),
                      )),
                      GestureDetector(
                        child: Container(child: const Text('+',style: TextStyle(fontSize: 30),)),
                        onTap: quantityIncrease,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                  ProductRepository().removeFavorite(index: widget.index);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.shade300,
                ),
                child: const Icon(Icons.delete),
              ),
            ),
          )
        ],
      ),
    );
  }
}
