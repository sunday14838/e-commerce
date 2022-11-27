import 'package:e_commerce/home.dart';
import 'package:e_commerce/widgets/product_card.dart';
import 'package:e_commerce/widgets/botton.dart';
import 'package:flutter/material.dart';

import 'imageslide.dart';
import 'views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:  Home(),
    );
  }
}
