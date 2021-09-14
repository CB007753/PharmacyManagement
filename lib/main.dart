// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'Screens/signIn.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  int duration = 0;
  late Widget goToPage;

  MyApp({duration=3, goToPage:SignIn });
  
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => goToPage)
        );
    });

    return MaterialApp(
      //hides the debug banner on top right corner
      debugShowCheckedModeBanner: false,
      title: 'Pharmacy Management',

      home:  Scaffold(
      body: Container(
        color: Colors.green.shade600,
        child: Center(
          child: Icon(Icons.medical_services_sharp,color: Colors.white, size: 160.0),
        ),
      ),
    ),

    
    );
  }
}

