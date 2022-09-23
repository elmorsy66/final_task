import 'dart:async';

import 'package:finaltask/splash/splash_2.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Splash2())));
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color(0xFF24D4A4),
          Color(0xFF1CB9CB),]
        ),
      ),
        child: Center(child: Image.asset("assets/image/Logo.png"),),
        

      )

    );
  }
}
