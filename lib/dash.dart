import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Screens/authentication.dart';
import 'Screens/home.dart';
import 'Screens/registration.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            print(FirebaseAuth.instance.currentUser);
            if(snapshot.connectionState==ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            } else if(snapshot.hasData) {
              return HomeScreen();
            } else if(snapshot.hasError) {
              return Center(child: Text("Some thing went wrong",style: TextStyle(color: Colors.white),),);
            } else {
              return RegisterScreen();
            }
          }
      ) ,
    );
  }
}
