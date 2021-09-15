import 'dart:async';
import 'package:flutter/material.dart';


import 'Screens/signIn.dart';



void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Pharmacy App',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: MyHomePage(),

  //hides the debug banner on top right corner
	debugShowCheckedModeBanner: false,
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

//initState() first call super.initState() and then 
//Timer of duration 3 seconds.
@override
void initState() {
	super.initState();

  //Timer function has 2 arguments,
//first is Duration and second is action to be performed)
	Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(
    context,
		MaterialPageRoute(
      builder:(context) => HomeScreen()
			)
		)
		);
}
@override
Widget build(BuildContext context) {
	return Container(
        color: Colors.white,
        child: Center(
          child: Image.asset('assets/image.png')
          //Icon(Icons.medical_services_sharp,color: Colors.white, size: 160.0),
        )
	);
}
}

//This is the screen which will be displayed to the user after the splash screen
class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title:Text("Pharmacy App"),elevation: 10.3),
	body: 
  //SignUp(),
  SignIn(),

        
	);
}
}
