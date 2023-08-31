
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:two/firebase_options.dart';

import 'authfile.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  Widget build (BuildContext Context){
    return MaterialApp(
      home: AuthPage(),
    );
  }
}