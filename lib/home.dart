import 'package:flutter/material.dart';
import 'package:e_commerce/views/views.dart';

class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex=0;

  List pages =[
    MyHomePage(),
    Favourite(),
    Cart(),
    Profile()
  ];

  void onTap(index){setState(() {
    selectedIndex=index;
  });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black54,
          selectedFontSize: 16,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
    BottomNavigationBarItem(icon: GestureDetector(onTap: (){setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Favourite();
      }));
    });},child: Icon(Icons.favorite,)),label: 'Likes'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),
      ]),
        body: pages[selectedIndex],
    );
  }
}
