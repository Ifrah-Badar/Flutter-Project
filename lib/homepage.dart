import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut(){FirebaseAuth.instance.signOut();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(actions: [IconButton(
        onPressed: signUserOut, icon:Icon(Icons.logout),
    )],),
    body:
     Center(child: Text(
      "LOGGED IN As"+ user.email!, style: TextStyle(fontSize: 20),)),
    );
  }
}