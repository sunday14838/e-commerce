import 'package:e_commerce/data/data_provider/product_data.dart';
import 'package:e_commerce/data/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../widgets/widgets.dart';
import 'views.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 // int selectedIndex=0;
 //  List pages =[
 //    MyHomePage(),
 //    Favourite(),
 //    Cart(),
 //    Profile()
 //  ];

  @override
  Widget build(BuildContext context) {
    final productController =Get.put(ProductController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Welcome! Mark',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: (index){setState(() {
        //    selectedIndex=pages[index];
        //   });},
        //   // onTap: pages[selectedIndex],
        //   currentIndex: selectedIndex,
        //   selectedItemColor: Colors.blueAccent,
        //   unselectedItemColor: Colors.black54,
        //   selectedFontSize: 16,
        //   showSelectedLabels: true,
        //   showUnselectedLabels: false,
        //   items: [
        //   BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
        //   BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Likes'),
        //   BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: 'Cart'),
        //   BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),
        // ],),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.white,
        //   child: Padding(
        //     padding: const EdgeInsets.all(15.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         const Icon(Icons.home, color: Colors.blueAccent),
        //         const Icon(
        //           Icons.favorite,
        //           color: Colors.black54,
        //         ),
        //         const Icon(Icons.shopping_cart, color: Colors.black54),
        //         const Icon(Icons.person, color: Colors.black54),
        //       ],
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                            hintText: 'Search foods',
                            fillColor: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/fruits.jpg'), fit: BoxFit.fill)),
                  height: 150,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Button(),
                const SizedBox(
                  height: 20,
                ),
                Obx(()=>GridView.builder(
                      itemCount: productController.products.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.4),
                      itemBuilder: (context, index) {
                        return ProductCard(product: productController.products[index],);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
