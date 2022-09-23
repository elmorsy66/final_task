import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text('LOCATION',style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  child: Column(
                    children: [
                      Image.asset('assets/image/usa.png'),
                      SizedBox(height: 20,),
                      Image.asset('assets/image/france.png'),
                      SizedBox(height: 20,),
                      Image.asset('assets/image/india.png'),
                      SizedBox(height: 20,),
                      Image.asset('assets/image/england.png'),
                      SizedBox(height: 20,),
                      Image.asset('assets/image/australia.png'),
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
}
