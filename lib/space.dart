import 'package:flutter/material.dart';

class space extends StatelessWidget{
  final mycontroller;
  final String myhintText;
  final bool myobscureText;
  const space ({super.key,required this.mycontroller,required this.myhintText,required this.myobscureText});
  Widget build(BuildContext context){
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0), 
            child:
            TextField(
              controller: mycontroller,
              obscureText: myobscureText,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor:Colors.grey.shade200,
                        filled:true,
                        hintText: myhintText),),);
                         
}}