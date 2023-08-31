import 'package:flutter/material.dart';

class Square extends StatelessWidget{
  final String imagePath;
  const Square({super.key,required this.imagePath});
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      height: 80,
      child: Image.asset(imagePath),
      
    );
  }
}