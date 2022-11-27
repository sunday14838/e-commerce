import 'package:flutter/material.dart';
import 'package:e_commerce/buttonList.dart';

class Button extends StatefulWidget {
  Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 45, child:
    ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return ListView();
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(height: 10,);
    }, itemCount:buttonList.length,
    ),);
  }
}