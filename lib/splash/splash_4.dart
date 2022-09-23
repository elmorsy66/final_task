import 'package:finaltask/home/main_page.dart';
import 'package:finaltask/login/singin.dart';
import 'package:finaltask/profail/Profail.dart';
import 'package:flutter/material.dart';

import '../bar.dart';

class Splash4 extends StatefulWidget {
  const Splash4({Key? key}) : super(key: key);

  @override
  State<Splash4> createState() => _Splash2State();
}

class _Splash2State extends State<Splash4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 80,),
              Center(child: Image.asset("assets/image/Logo_Color.png"),),
              SizedBox(height: 50,),
              Center(child: Image.asset("assets/image/Vector Image3.png"),),
              SizedBox(height: 30,),
              Center(child: Text("Enjoy Your Trip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),),
              SizedBox(height: 10,),
              Center(child: Opacity(
                  opacity: 0.30,
                  child: Text("Enjoy your holiday! don't forget to take \na photo and share to the world",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,)),),
              SizedBox(height: 50,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()));
                  },
                  child:Text("let's go!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff24D4A4)),),
              ),

            ],
          ),


        )

    );
  }
}
