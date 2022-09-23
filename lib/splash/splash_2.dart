import 'package:finaltask/home/main_page.dart';
import 'package:finaltask/login/singin.dart';
import 'package:finaltask/splash/splash_3.dart';
import 'package:flutter/material.dart';

import '../bar.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

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
              Center(child: Image.asset("assets/image/Vector_Image.png"),),
              SizedBox(height: 30,),
              Center(child: Text("Plan Your Trip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),),
              SizedBox(height: 10,),
              Center(child: Opacity(
                  opacity: 0.30,
                  child: Text("Plan your trip, choose your destination.\nPick the best place for your holiday.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,)),),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignIn()));
                      },
                      child: Opacity(
                        opacity: 0.5,
                          child: Text("SKIP",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff111111)),)),
                    ),
                    Row(children: [
                      Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: Color(0xff24D4A4),
                        borderRadius: BorderRadius.circular(200)
                      ),
                    ),
                      SizedBox(width: 4,),
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: Color(0xff24D4A4),
                          borderRadius: BorderRadius.circular(200)
                        ),
                    ),
                      ),
                      SizedBox(width: 4,),
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Color(0xff24D4A4),
                              borderRadius: BorderRadius.circular(200)
                          ),
                        ),
                      ),

                    ],),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Splash3()));
                        },
                        child: Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff24D4A4)),)),
                  ],
                ),
              )
            ],
          ),


        )

    );
  }
}
