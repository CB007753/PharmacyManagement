import 'package:flutter/material.dart';
import 'package:pharmacy_management/Screens/PharmacistPage/pharmacist_homepage.dart';


class AdminHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Pharmacy App"),elevation: 10.3),
      
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

//-----------Adding dummy profile pic
              Padding(
                padding:const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //menu icon
                    Icon(Icons.menu,color: Colors.black,size: 50.0),
                    //dummy profile pic
                    Image.asset('assets/profilePic2.png', width: 60.0)
                  ],
                ),
              ),

//-----------Designing the heading text
              Padding(padding: const EdgeInsets.only(bottom: 15.0,left: 18.0, right: 18.0),
              child: Text(
                "Admin Home Page",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),

                textAlign: TextAlign.start,
                ),
                
              ),

              Padding(padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: <Widget>[

//dummy data for testing purpose of the screen

//------------Manage Drugs
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                    child: Card(
                      color: Colors.green.shade200,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
//----------------
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/drug1.png",width: 80.0),
                              SizedBox(height: 10.0),
//----------------                       
                              Text(
                                "Manage Drugs",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                                ),
//----------------
                                SizedBox(height: 5.0),
                                Text(
                                "172 Drugs",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                                ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    ),
                 
//------------Manage Customers
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                    child: Card(
                      color: Colors.green.shade200,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
//----------------
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/Customer.png",width: 78.0),
                              SizedBox(height: 10.0),
//----------------                       
                              Text(
                                "Manage Customers",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                                ),
//----------------
                                SizedBox(height: 5.0),
                                Text(
                                "76 Customers",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                                ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    ),

//------------Manage Pharmacist 
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                    child: Card(
                      color: Colors.green.shade200,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
//----------------
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/pharmacist1.png",width: 85.0),
                              SizedBox(height: 10.0),
//----------------                       
                              Text(
                                "Manage Pharmacist",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                                ),
//----------------
                                SizedBox(height: 5.0),
                                Text(
                                "3 Pharmacist",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                                ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    ),

//------------View Inventory Status 
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                    child: Card(
                      color: Colors.green.shade200,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
//----------------
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/inventory1.png",width: 76.0),
                              SizedBox(height: 10.0),
//----------------                       
                              Text(
                                "View Inventory Status",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                                ),
//----------------
                                SizedBox(height: 5.0),
                                Text(
                                "172 items",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                                ),

                            ],
                          ),
                        ),
                      ),

                    ),
                    ),

//------------Settings
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                    child: Card(
                      color: Colors.green.shade200,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
//----------------
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/settings.png",width: 80.0),
                              SizedBox(height: 10.0),
//----------------                       
                              Text(
                                "Settings",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                                ),
//----------------
                                

                            ],
                          ),
                        ),
                      ),

                    ),
                    ),

//button for testing pharmacist homepage
      FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
                  MaterialPageRoute(builder:(context) {return PharmacistHomePage();})
                       );
                  print('Entering Pharmacist Home Page');
        }
        )

                  ],
                ),
              )
                
              )
            ],
          ) 
          ),
      ),
    );
  }



}