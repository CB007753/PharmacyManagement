import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _fullnameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(top: 10, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),

      child: Column(
        children: <Widget>[
  //design for "Sign Up" Text        
          Padding(
            padding: const EdgeInsets.only(left:18.0, top: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Sign Up',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold, color: Colors.orange),
              ),
            ),
          ),



        
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
//design for full name textfield
      SizedBox(
                width: 360, 
                child: 

            TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
  //male icon used
                    icon: Icon(Icons.manage_accounts_rounded),
                    labelText: 'Full Name',
                    hintText: 'Type your Full Name',
                  ),
    //validator recieves the text that the user has entered
                  validator: (value){
                    if (value!.trim().isEmpty){
                      return 'Full Name is required';
                      }else{
                        return null;
                      }
                  },
                  controller: _fullnameTextController,
                  ),
              ),

              Divider(),
    //design for input email field          
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




        ],
      ),
    );
  }
}
