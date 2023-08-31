import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:two/login.dart';
import './homepage.dart';
class AuthPage extends StatelessWidget{
  const AuthPage({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      body: 
      StreamBuilder<User?>(
        stream:FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          return HomePage();

        }
        else{
return Login();
        }
      },
      ),
    );
  }
}