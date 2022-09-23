import 'dart:convert';

import 'package:finaltask/login/singup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../bar.dart';
import '../home/main_page.dart';
import '../respons/placesresp.dart';
import '../respons/Loginres.dart';
import 'forget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";
  bool isLoading = false;
  bool isPassword = false;
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child:
      Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF24D4A4),
                      Color(0xFF1CB9CB),
                    ]
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Image.asset(
                    'assets/image/Logo.png', width: 500, height: 100,),
                  SizedBox(
                    height: 468,
                  ),
                  Image.asset('assets/image/Social_Icons.png'),
                  SizedBox(height: 20,),

                  InkWell(
                    child: Text(
                      "Don't have an account? Sign Up", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15,),
                    Text('Sign In', textAlign: TextAlign.center, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    SizedBox(height: 5,),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                        ),
                        validator: (value){
                          if (value == null ||
                              value.isEmpty||
                              !value.contains("@")
                          ){
                            return "Enter Valid Email";
                          }
                          return null;
                        },
                        onSaved: (value){
                          email = value!;
                        },

                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'password',
                        ),
                        validator: (value){
                          if (value == null ||
                              value.isEmpty
                          ){
                            return "Enter Valid Password";
                          }
                          return null;
                        },
                        onSaved: (value){
                          isPassword = true;
                        },

                      ),
                    ),
                    SizedBox(height: 15,),

                    InkWell(
                      child: Text('Forget Password?', textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF24D4A4),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forget(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.only(top: 5, left: 130),
                        height: 45,
                        width: 30,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF24D4A4),
                                  Color(0xFF1CB9CB),
                                ]
                            ),
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign In', textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 90,),
                            Icon(
                              Icons.arrow_forward_outlined, color: Colors.white,
                              size: 30,),
                          ],
                        ),
                      ),
                      onTap: () {
                        if(
                        _formKey.currentState!.validate()
                        ){_formKey.currentState!.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bar()));

                        login();

                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
  Future login() async {



    Response loginResponse = await post(Uri.parse("http://alcaptin.com/api/login"),
      body: {
      "email": email,
        "password": password,
      });
    dynamic convertedjson = jsonDecode(loginResponse.body);

    if(loginResponse.statusCode == 200){
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => bar()));

    }else{
      print(convertedjson["message"]);
    }

    


  }
}