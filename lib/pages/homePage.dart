// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_verification/asset/themes.dart';
import 'package:lottie/lottie.dart';
import 'signUpPage.dart';
import 'sign_in_page.dart';


class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
       title: Text(""),
       elevation: 0,
       backgroundColor: app_purple,
     ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: container_color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(5, 10)
                    )
                  ]
                  
                ),
                child: Column(
                  children: [
                    Container(child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Gala.", 
                      style: TextStyle(
                        fontFamily: "muli bold",
                        fontSize:30,
                        fontWeight: FontWeight.w900,
                        color: app_purple,
                        letterSpacing: 2
                      ),),
                    ),),
      
                    Expanded(
                      flex: 3,
                      child: Lottie.asset("assets/lottiefile.json",
                      width:420,
                      height:350,
                      fit:BoxFit.fill),
                    )
      
                  ],
                ),
              ),
      
              SizedBox(height: 30),
      
              Container(child: Text("The best place to invest your money!",
              style: TextStyle(
                fontFamily: "muli regular",
                fontSize: 18,
                fontWeight: FontWeight.bold
              )),),
              SizedBox(
                height: 20,
              ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => signUpPage()),
        );
                  },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: app_purple,
                     borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                  ),
                  child: Center(
                    child: Text("Sign Up",style: 
                    TextStyle(
                      color: Colors.white,
                      fontFamily: "muli regular",
                      fontSize: 15
              
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => sign_in_page()),
        );
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                    border: Border.all(width: 2.0, color: app_purple)
                    
                  ),
                  child: Center(
                    child: Text("Sign In",style: 
                    TextStyle(
                      color: Colors.black87,
                      fontFamily: "muli regular",
                      fontSize: 15
              
                    ),),
                  ),
                ),
              )
      
            ],
          ),
        ),
      ),
    );
  }
}