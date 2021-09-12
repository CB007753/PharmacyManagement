import 'package:flutter/material.dart';


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
    //design for text "Login"
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(top:10, bottom: 24),
      decoration: BoxDecoration(
          color: Colors.transparent,
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.all(
           Radius.circular(25.0)
           ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:18.0, top: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Login',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          
        children: <Widget>[
 //wrapping elevated button into sized box to set the size of the button
          SizedBox(
            height: 60,
            width: 120,
            child: Flexible(  
            child: Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0),
              child: ElevatedButton(
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange.shade200,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  )
                ),

                onPressed: (){
                  print('User Logged in successfully');
                },
              ),
              
              )
            )

          )
          

        ],
      )

        ],
        ),
    );

  }

  
}