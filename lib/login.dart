import 'package:flutter/material.dart';
import 'click.dart';
import 'space.dart';
import 'package:two/square.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller=TextEditingController();

  final passwordcontroller=TextEditingController();

void signInUser()async{

  showDialog(
    context: context,
     builder: (context){
    return const Center(
      child: CircularProgressIndicator(),
    );
},
);
try{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailcontroller.text,
    password:passwordcontroller.text
  );
  Navigator.pop(context);
} on FirebaseAuthException catch (e) {
  Navigator.pop(context);
  if (e.code == 'user-not-found') {
    wrongEmail();
  }
  else if (e.code == 'wrong password') {
    wrongPassword();
  }
}
  

  
}

void wrongEmail(){
  showDialog(context: context, builder: (context){
    return const AlertDialog(title: Text('Incorrect Email') ,
    );
  },
  );
}
 
 void wrongPassword() {
  showDialog(context: context,
   builder: (context) {
    return const AlertDialog(title: Text('Incorrect Password') ,
    );
  },
  );
 }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child:SingleChildScrollView(
          child: Center(
              child: Column(
                children: [
            const SizedBox(height: 50),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            Text(
              'Welcome Back!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
            const SizedBox(height: 25),
            space(
              mycontroller: emailcontroller,
               myhintText:'Email',
            myobscureText:false),
            const SizedBox(height: 25),
            space(
              mycontroller:passwordcontroller ,
              myhintText:'Password',
            myobscureText:true),
            const SizedBox(height: 10),
           Padding(padding:  const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Text(
                  'forgot Password',
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],),),
              SizedBox(height: 20),
              Click(myonTap: signInUser),
              SizedBox(height: 50),
              Row(children: [Expanded(child:Divider(thickness: 0.5,color: Colors.grey[400],
              ), ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'or login with',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ),
           Expanded(
            child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
            ),
              ],
              ),

              const SizedBox(height: 50),
            
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Square(imagePath: 'lib/images/google.png'),
            const SizedBox(width: 20),
            Square(imagePath: 'lib/images/apple.png'),
           ],),
              Padding(
                padding: EdgeInsets.only(top: 120.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(onPressed: () {

                  },
                   child: Text(
                    "Sign Up Here" ,
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,

                    ),
                   ),
                   ),
                ],
                ),
                ),
                ],
                ),
                ),
                ),
                ),
                );
                }
}