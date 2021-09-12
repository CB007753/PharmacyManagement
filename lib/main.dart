import 'package:flutter/material.dart';
import 'Screens/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy Management',

      

      home: Scaffold(
        body: SignIn(),
        backgroundColor: Colors.green.shade50 ,
        appBar: AppBar(
          elevation: 10.2,
          backgroundColor:  Colors.green.shade100,
        ),
      ),

      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
     
    );
  }
}

