// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_verification/asset/themes.dart';
import 'package:lottie/lottie.dart';

class signUpPage extends StatefulWidget {
  signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

// ignore: camel_case_types
class _signUpPageState extends State<signUpPage> {
  bool _isVisible = true;
  bool _hasSpecialCharacters = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;
  bool _hasValidNoOfCharacters = false;
  AutovalidateMode _autoValidate = AutovalidateMode.disabled; 
  final _formKey = GlobalKey<FormState>();


  void handlePassword(String value) {
    final upperCaseRegex = RegExp(r'[A-Z]');
    final lowerCaseRegex = RegExp(r'[a-z]');
    final specialCharacterRegex = RegExp(r'[!@#\$%^&*(),.?:{}|<>]');
    setState(() {
      _hasUpperCase = false;
      if (upperCaseRegex.hasMatch(value)) {
        _hasUpperCase = !_hasUpperCase;
      }
      _hasLowerCase = false;
      if (lowerCaseRegex.hasMatch(value)) {
        _hasLowerCase = !_hasLowerCase;
      }
      _hasSpecialCharacters = false;
      if (specialCharacterRegex.hasMatch(value)) {
        _hasSpecialCharacters = !_hasSpecialCharacters;
      }
      _hasValidNoOfCharacters = false;
      if (value.length >= 8) {
        _hasValidNoOfCharacters = !_hasValidNoOfCharacters;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        elevation: 0,
        leading: IconButton(
         onPressed: () {
  Navigator.pop(context);
},
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: app_purple,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Lottie.asset(
                'assets/15570-banking-finance-icon-02.json',
                width: 100,
                height: 100,
              ),
              alignment: Alignment.topCenter,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 578.6,
                decoration: BoxDecoration(
                    color: container_color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(5, 10))
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Create an Account",
                        style: TextStyle(
                          fontFamily: "muli",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: app_purple,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Form(
                        key: _formKey,
                        autovalidateMode: _autoValidate,
                         
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Full Name"),
                            SizedBox(
                              width: 320,
                              height: 45,
                              child: TextFormField(
                                validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter your Full name';
                                    }
                                    return null;
                                  },
                               
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
                                ],
                                  textCapitalization:
                                      TextCapitalization.words,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: "muli",
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Phone Number"),
                            SizedBox(
                              width: 320,
                              height: 45,
                              child: TextFormField(
                                validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter a phone number';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: "muli",
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Email Address"),
                            SizedBox(
                              width: 320,
                              height: 45,
                              child: TextFormField(
                                 validator: (value) {
                                    if (value!.isEmpty || 
                                    !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)
                                    ) 
                                    {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: "muli",
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Password"),
                            SizedBox(
                              width: 320,
                              height: 45,
                              child: TextFormField(
                                  onChanged: (value) {
                                    handlePassword(value);
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter a password';
                                    }
                                    return null;
                                  },
                                  obscureText: _isVisible ? true : false,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: "muli",
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isVisible = !_isVisible;
                                          });
                                        },
                                      icon: _isVisible
                                            ? Icon(
                                                Icons.visibility,
                                                color: app_purple,
                                              )
                                            : Icon(Icons.visibility_off,
                                                color: Colors.grey),
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2,
                                        ),
                                      ))),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: _hasValidNoOfCharacters
                                              ? Colors.green
                                              : Colors.grey.shade400,
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: _hasValidNoOfCharacters
                                        ? Colors.green.shade900
                                        : null,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "8 characters",
                                  style: TextStyle(
                                      color: _hasValidNoOfCharacters
                                          ? Colors.green
                                          : null),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: _hasUpperCase
                                              ? Colors.green
                                              : Colors.grey.shade400,
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: _hasUpperCase
                                        ? Colors.green[900]
                                        : null,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "upper-case letter",
                                  style: TextStyle(
                                    color:
                                        _hasUpperCase ? Colors.green : null,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: _hasSpecialCharacters
                                              ? Colors.green
                                              : Colors.grey.shade400,
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  child: Icon(Icons.done,
                                      size: 10,
                                      color: _hasSpecialCharacters
                                          ? Colors.green.shade900
                                          : null),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "special character",
                                  style: TextStyle(
                                      color: _hasSpecialCharacters
                                          ? Colors.green
                                          : null),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: _hasLowerCase
                                              ? Colors.green
                                              : Colors.grey.shade400,
                                          width: 2),
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: _hasLowerCase
                                        ? Colors.green.shade900
                                        : null,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "lower-case letter",
                                  style: TextStyle(
                                      color: _hasLowerCase
                                          ? Colors.green
                                          : null),
                                )
                              ],
                            ),
                            SizedBox(height: 50),
                            GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  print('valid');
                                } else {
                                  print('invalid');
                                  setState(() => _autoValidate =  AutovalidateMode.always);
                                }
                              },
            
                              child: Center(
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: app_purple,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "muli regular",
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
