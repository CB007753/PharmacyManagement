

import 'package:flutter/material.dart';
import 'package:pharmacy_management/Screens/AdminPage/admin_homepage.dart';
import 'package:pharmacy_management/Screens/signUp.dart';


class SignIn extends StatefulWidget{

  State <StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn>{
  
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  
  @override
  void dispose(){
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(top:10, bottom: 24),
      decoration: BoxDecoration(
          color: Colors.white,
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.all(
           Radius.circular(25.0)
           ),
      ),
      
//wrapping the column in a singleChildScrollView widget to solve the render overflow issue
      child: SingleChildScrollView(
        child:Column(
        children: <Widget>[
//design for text "Login"
          Padding(
            padding: const EdgeInsets.only(left:18.0, top: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Login',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold, color: Colors.green.shade500),
              ),
            ),
          ),

//design for input email field
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(

              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(25.0)
              ),
            ),

          child: Column(
            children: <Widget>[
              SizedBox(
                width: 360, 
                child: 

            TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
  //mail icon used
                    icon: Icon(Icons.mail),
                    labelText: 'Email',
                    hintText: 'Type your email',
                  ),
    //validator recieves the text that the user has entered
                  validator: (value){
                    if (value!.trim().isEmpty){
                      return 'Email is required';
                      }else{
                        return null;
                      }
                  },
                  controller: _emailTextController,
                  ),
              ),

//design for input password field
              Divider(),
              SizedBox(
                width: 360,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
   //password icon used                     
                        icon:Icon(Icons.lock),
                        labelText: 'Password',
                        hintText: 'Type your password'
                    ),
  //validator recieves the text that the user has entered
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return 'Password is required';
                      }else {
                        return null;
                      }
                    },
                    controller: _passwordTextController,
                  ),

              ),
            ],
          ),
          ),

//designing the Login Button

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
 
              new Container(
                child: new Row(
                  
                  children: <Widget>[
//wrapping elevated button into sized box to set the size of the button
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SizedBox(
                      height: 60,
                      width: 120,
      
                      child: ElevatedButton(
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade200,
                  onPrimary: Colors.black,
                  onSurface: Colors.black,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),

                onPressed: (){

                   Navigator.push(context,
                  MaterialPageRoute(builder:(context) {return AdminHomePage();})
                       );
                  print('User Logged in successfully');
                         },
                      ),

                    ),
                    ),
                    

//designing the "Signup button"
                    SizedBox(
                      height: 60,
                      width: 120,
            

                      child: ElevatedButton(
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade200,
                  onPrimary: Colors.black,
                  onSurface: Colors.black,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),

                onPressed: (){
                  //path to registration page
                  
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) {return SignUp();})
                    );
                  
                  print('Registeration page opened');
                },
              ),
                    )
                    
                  ],
                ),
                

              

              ),

        ],
      ),

     // adding the logo   
      Padding(padding: EdgeInsets.only(bottom: 10.0,top: 13.0),
              child:Column(
          children: <Widget>[
            new Image.asset('assets/medicine logo2.jpg',height: 200.0,width: 200.0),
          ],
      ),),
          
    
        ],
        ),

         ),
       
    );

  }

  
}