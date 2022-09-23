
import 'package:finaltask/profail/Profail.dart';
import 'package:finaltask/splash/splash_2.dart';
import 'package:finaltask/splash/splash_3.dart';
import 'package:finaltask/splash/splash_4.dart';
import 'package:flutter/material.dart';

import 'home/detils.dart';
import 'home/main_page.dart';
import 'home/places.dart';

class bar extends StatefulWidget {
  const bar({Key? key}) : super(key: key);

  @override
  State<bar> createState() => _barState();
}

class _barState extends State<bar> {
  int currntIndex = 0;
  final scrren = [
    HomeScreen(),
    paris(),
    Places1(),
    HomeScreen(),
    Profile(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEAEA),
      body:scrren[currntIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff24D4A4) ,
        currentIndex: currntIndex,
        onTap: (index) => setState(()=>currntIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: 'favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),
            label: 'My Trip',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: 'calendar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
            label: 'profile',
          ),
        ],

      ),

    );
  }
}
