import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEAEA),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25,top: 70),
            child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Image.asset("assets/icon/cancel.png")),
          ),
          SizedBox(height: 16,),
          Image.asset("assets/image/IMG.png"),
          SizedBox(height: 10,),
          Text("Kenneth Gutierrez",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Opacity(
              opacity: 0.3,
              child: Text("Kenneth_gutierrez@gmail.com",style: TextStyle(fontSize: 15),)),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1373.png"),
              title: Text("Notification  04",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1374.png"),
              title: Text("Tours",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1375.png"),
              title: Text("Location",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1376.png"),
              title: Text("Language",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1377.png"),
              title: Text("Invite Friends",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25,left: 25),
            child: Container(
              width: double.infinity,
              height: 8,
              child: Divider(

                  color: Colors.grey,
                height: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1378.png"),
              title: Text("Help Center",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1380.png"),
              title: Text("Setting",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: ListTile(
              leading: Image.asset("assets/icon/Group 1379.png"),
              title: Text("Log Out",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Image.asset("assets/icon/Icon.png"),
            ),
          ),



        ],

      ),
    );
  }
}
