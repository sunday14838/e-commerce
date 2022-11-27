import 'package:flutter/material.dart';

List<Widget> buttonList =[
  GestureDetector(
    child: Container(padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black87),
      child: const Text('Recommended',style: TextStyle(color: Colors.white),),
    ),
  ),
  GestureDetector(
    child: Container(padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black87),
      child: const Text('Beans',style: TextStyle(color: Colors.white),),
    ),
  ),

  GestureDetector(
    child: Container(padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black87),
      child: const Text('Rice',style: TextStyle(color: Colors.white),),
    ),
  ),
  GestureDetector(
    child: Container(padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black87),
      child: const Text('Potato',style: TextStyle(color: Colors.white),),
    ),
  ),  
  GestureDetector(
    child: Container(padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black87),
      child: const Text('Garri',style: TextStyle(color: Colors.white),),
    ),
  ),
];