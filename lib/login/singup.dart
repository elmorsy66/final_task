import 'package:finaltask/login/singin.dart';
import 'package:flutter/material.dart';

import '../bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var nameController;
    var EmailController;
    var passController;
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
                child:Column(

                    children: [
                      SizedBox(height: 50,),
                      Image.asset('assets/image/Logo.png',width: 500,height: 100,),
                      SizedBox(
                        height: 488,
                      ),
                      Image.asset('assets/image/Social_Icons.png'),
                      SizedBox(height: 25,),
                      InkWell(
                        child: Text('Already have an account ? Login',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        },
                      ),
                    ]
                ),
              ),
              Container(
                height: 450,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text('Sign Up',textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      SizedBox(height: 5,),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        controller: EmailController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                      TextField(
                        controller: passController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'phone Number',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {
                              setState(() {
                                value = value;
                              });
                            },
                            activeColor: Color(0xFF24D4A4),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "I agree ",
                              style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: 'Terms&Conditions', style: TextStyle(color: Color(0xFF24D4A4),fontWeight: FontWeight.bold,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(top: 10,left: 120),
                        height: 55,
                        width: 350,
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
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => bar(),
                            ),
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign Up',textAlign: TextAlign.center,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                              ),
                              SizedBox(width: 100,),
                              Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 30,),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
      ),
    );
  }
}
