import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../respons/places2resp.dart';

class paris extends StatefulWidget {
  const paris({Key? key}) : super(key: key);

  @override
  State<paris> createState() => _parisState();
}

class _parisState extends State<paris> {
  int currentIndex =0;
  Places2resp? places2model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(3.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_back_ios,size: 30,color: Colors.black.withOpacity(0.5),),
                  Text('Back',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)
                  ),),
                  SizedBox(width: 90,),
                  Text('Paris',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 131,),
                  Icon(Icons.search,color: Colors.black.withOpacity(0.7),),
                ],
              ),
              SizedBox(height: 20,),
              Image.asset('assets/image/photo_2022-09-22_12-48-06.jpg',width: double.maxFinite,),
              SizedBox(height: 20,),

              Center(
                child: Text('DisneyLand Paris',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),),
              ),
              SizedBox(height: 20,),
              Text('Departure',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
             // Text(places2model!.data!.name!,style: TextStyle(
               // fontSize: 20,
             //   fontWeight: FontWeight.bold,
             // ),),

              SizedBox(height: 8,),
              Text('23rd Oct 2017',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 15,
              ),),
              SizedBox(height: 20,),
              Text('Duration',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 8,),
              Text('5 Days / 4  Nights',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 15,
              ),),
              SizedBox(height: 20,),
              Text('Discover 7 World Heritage Sites in this\ntour.',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 8,),
              Text('Fans of Mickey can visit Disneyland Paris which is \nlocated 32 km from central Paris, with connection \nto the suburban RER A.',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 15,
              ),),
              SizedBox(height: 70,),
            ],
          ),
        ),
      ),
    );
  }
  Future getPlaces2() async{
    Response Places2respons = await post(Uri.parse("http://alcaptin.com/api/places/2"),
        headers:
        { "Authorization":"Bearer access_token"}
    );

    dynamic jsonResponse = jsonDecode(Places2respons.body);
    setState(() {
      places2model = Places2resp.fromJson(jsonResponse);
    });


  }

}
