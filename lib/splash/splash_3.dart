import 'package:finaltask/login/singin.dart';
import 'package:finaltask/splash/splash_4.dart';
import 'package:flutter/material.dart';

import '../bar.dart';
import '../home/main_page.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash2State();
}

class _Splash2State extends State<Splash3> {

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
              Center(child: Image.asset("assets/image/Vector Image2.png"),),
              SizedBox(height: 30,),
              Center(child: Text("Select The Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),),
              SizedBox(height: 10,),
              Center(child: Opacity(
                  opacity: 0.30,
                  child: Text("Select the day, book your ticket. We give \nyou the best price. We guarantied!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,)),),
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

                    ],),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Splash4()));
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
