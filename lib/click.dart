import 'package:flutter/material.dart';

class Click extends StatelessWidget{
final Function()? myonTap;

  const Click({super.key,required this.myonTap});
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: myonTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
        child: Text("Log In",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),),
      ),
    ),);
  }
}