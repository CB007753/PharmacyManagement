import 'package:flutter/material.dart';
//import 'package:pharmacy_management/Screens/signIn.dart';

class SignUp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _fullnameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _genders=['Male','Female', 'Other'];
  String _gender = 'Male';

  @override
  Widget build(BuildContext context) {

//added the whole container widget under scaffold widget to solve the "No Material Widget Found" error.
    return new Scaffold(
      	appBar: AppBar(title:Text("Pharmacy App"),elevation: 10.3),
      body: Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(top: 10, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),

//wrapping the column in a singleChildScrollView widget to solve the render overflow issue
      child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
  //design for "Sign Up" Text        
          Padding(
            padding: const EdgeInsets.only(left:18.0, top: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Sign Up',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold, color: Colors.green.shade500),
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


//------
          child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
//design for full name textfield
//adding sized box to specify the width of the text field
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
              
//designing the gender drop down list
Row(
    mainAxisAlignment: MainAxisAlignment.start,

  children: <Widget>[

    new Container(
        child: new Row(
          
          children: <Widget>[
            
            Icon(Icons.male_rounded, color: Colors.grey.shade500, size: 30.0),

            Padding(padding: EdgeInsets.only(left: 13.0),

   child:  DropdownButton<String>(
      items: _genders.map((String value){
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
        
        );
    }).toList(),

    value: _gender,

    onChanged:(value){
       _onDropdownChanged(value!);
    },  
      
      ),
),

          ]
        )
        )


  ],
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
          
          ),


//designing signup button
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
                  print('User Registered successfully');
                         },
                      ),

                    ),
                    ),
      
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
    ),
    );
    
    
  }
  _onDropdownChanged(String value){
                setState(() {
                  
                  this._gender= value;
                });
              }
}

