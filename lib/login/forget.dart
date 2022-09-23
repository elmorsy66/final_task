import 'package:finaltask/login/singup.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    var forgetController;
    return Scaffold(
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
                    SizedBox(height: 80,),
                    Image.asset('assets/images/planeLogo.png',width: 500,height: 100,),
                    SizedBox(height: 580,),
                    Text(
                      'Having Trouble ? Get Help',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15,),
                    Text('Forgot Password ?',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    SizedBox(height: 15,),
                    TextField(
                      controller: forgetController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter Email Address',
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      child:RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(text: 'Register now!', style: TextStyle(color: Color(0xFF24D4A4))),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 65,),
                    Container(
                      padding: const EdgeInsets.only(top: 5,left: 160),
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
                          Text('Forgot',textAlign: TextAlign.center,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          ),
                          SizedBox(width: 130,),
                          Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 30,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
      ),
    );
  }
}
