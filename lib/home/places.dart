import 'dart:convert';

import 'package:finaltask/home/detils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../respons/placesresp.dart';

class Places1 extends StatefulWidget {
  const Places1({Key? key}) : super(key: key);

  @override
  State<Places1> createState() => _Places1State();
}
class _Places1State extends State<Places1> {
  Places?  placesmodel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPlaces();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 145.0),
              child: ListTile(
                title: Text('TOURS',style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),),
                trailing: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Popular Destination",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xff24D4A4)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("10 Tours Avialable"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("assets/image/City-3.png",scale: 0.8,),
                    Image.asset("assets/image/City-2.png",scale: 0.8,),
                    Image.asset("assets/image/City-1.png",scale: 0.8,),
                    Image.asset("assets/image/City.png",scale: 0.8,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Image.asset("assets/image/Offer.png",alignment: Alignment.centerLeft,scale: 0.9,),
                Column(
                  children: [
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0,right: 40),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Holidays"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Say yes to iconic snow Catamount,\nHillsdale, New York!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                            ),
                            ListTile(
                              leading:Text("Book your holiday package today"),
                              trailing: Image.asset("assets/image/Button.png",),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Discover New Places",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xff24D4A4)),),
            ),
            SizedBox(height: 20,),
           // Padding(
             // padding: const EdgeInsets.only(left: 15.0),
              //child: Container(
                //height: 240,
               // child: new ListView(
                 // scrollDirection: Axis.horizontal,
                 // children: new List.generate(3, (int index) {
                   // return new Container(
                     // width: 140,
                      //child: Stack(
                        //children: [
                          //Image.asset("assets/image/eiffel.png"),
                         // Padding(
                           // padding: const EdgeInsets.only(bottom: 30,left: 20),
                            //child: Align(
                           //     alignment: Alignment.bottomLeft,
                         //       child: Text("data",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                       //   ),

                     //   ],
                   //   ),
                 //   );
               //   }),),
             // ),

           // ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 280,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: placesmodel?.data?.data?.length ,itemBuilder: (context, index) {
                  InnerData item = placesmodel!.data!.data![index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> paris()));
                    },
                    child: Container(
                      width: 140,
                      child: Stack(
                        children: [
                          Image.network(item.image!),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30,left: 20),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(item.name!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                          ),

                        ],
                      ),
                    ),


                  );

                }
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Our Latest Blog Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xff24D4A4)),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/image/Image1.png"),
                          Container(
                            width: 245,
                            child: ListTile(
                              leading: Text("Byron Bay",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              trailing: Image.asset("assets/image/Fav..png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Australia    20 Dec, 2019",),
                          ),
                          SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("A popular tourist destination, it’s \ncharacterized by its many beaches\nandhinterland.",style: TextStyle(color: Colors.grey),),
                          ),
                          SizedBox(height: 12,)

                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/image/Image2.png"),
                          Container(
                            width: 245,
                            child: ListTile(
                              leading: Text("Burj AI Arab",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              trailing: Image.asset("assets/image/Fav..png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Dubai    20 Dec, 2019",),
                          ),
                          SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("A popular tourist destination, it’s \ncharacterized by its many beaches\nandhinterland.",style: TextStyle(color: Colors.grey),),
                          ),
                          SizedBox(height: 12,)

                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/image/Image3.png"),
                          Container(
                            width: 245,
                            child: ListTile(
                              leading: Text("Byron Bay",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              trailing: Image.asset("assets/image/Fav..png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Australia    20 Dec, 2019",),
                          ),
                          SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("A popular tourist destination, it’s \ncharacterized by its many beaches\nandhinterland.",style: TextStyle(color: Colors.grey),),
                          ),
                          SizedBox(height: 12,)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("People Also Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xff24D4A4)),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/image/Image4.png"),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Great Barrier Reef                                     Australia"),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width: 40,),
                              Text("4.8 (512 Reviews)",style: TextStyle(color: Colors.orange),)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Show More")
                          
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Image.asset("assets/image/Image5.png"),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pyramids of Giza                                            Egypt"),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width: 40,),
                              Text("4.8 (512 Reviews)",style: TextStyle(color: Colors.orange),)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Show More")

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Image.asset("assets/image/Image6.png"),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bora Bora Tourism                                  Polynesia"),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width: 40,),
                              Text("4.8 (512 Reviews)",style: TextStyle(color: Colors.orange),)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Show More")

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Image.asset("assets/image/Image4.png"),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The heritage of England                             London"),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              Icon(Icons.star,color: Colors.orange,),
                              SizedBox(width: 40,),
                              Text("4.8 (512 Reviews)",style: TextStyle(color: Colors.orange),)
                            ],
                          ),
                          SizedBox(height: 8,),
                          Text("Show More")

                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("What People's Say",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xff24D4A4)),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset("assets/image/IMG1.png",),
                      SizedBox(height: 12,),
                      Text("Matt Hardy"),
                      SizedBox(height: 8,),
                      Text("Sed tortor ante,\nthis is vestibulum\nnon crisus id,\nporta imperdiet",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Image.asset("assets/image/pexels-photo-1681010.png",),
                      SizedBox(height: 12,),
                      Text("Renato Abati"),
                      SizedBox(height: 8,),
                      Text("Sed tortor ante,\nthis is vestibulum\nnon crisus id,\nporta imperdiet",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Image.asset("assets/image/pexels-photo-16810101.png",),
                      SizedBox(height: 12,),
                      Text("Luanna Cabral"),
                      SizedBox(height: 8,),
                      Text("Sed tortor ante,\nthis is vestibulum\nnon crisus id,\nporta imperdiet",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),)
                    ],
                  ),



                ],
              ),
            ),
            SizedBox(height: 20,)


          ],
        ),
      ),
    );
  }
  
  Future getPlaces() async{
    Response placesResponse = await post(Uri.parse("http://alcaptin.com/api/places"),
      headers:
       { "Authorization":"Bearer access_token"}
    );

    dynamic jsonResponse = jsonDecode(placesResponse.body);
     setState(() {
       placesmodel = Places.fromJson(jsonResponse);
     });
    
    
  }

}
