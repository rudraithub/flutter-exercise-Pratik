import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 81, 238, 191),),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/13860466/pexels-photo-13860466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 50,
                  ),
                  Text("Hello This is PRatik JOshi💀",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,decoration: TextDecoration.underline,wordSpacing: 0),),
                ],
              ),
              ),
              Column(
                children: [
                  ListTile(
                    leading:Icon(Icons.home_filled,size: 25,),
                    title: Text("Home",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),

                  ListTile(
                    leading:Icon(Icons.navigation_outlined,size: 25,),
                    title: Text("Navigation",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),

                  ListTile(
                    leading:Icon(Icons.contact_emergency_outlined,size: 25,),
                    title: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),

                  ListTile(
                    leading:Icon(Icons.account_box_outlined,size: 25,),
                    title: Text("User Profile",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),

                  ListTile(
                    leading:Icon(Icons.logout_outlined,size:25,),
                    title: Text("Log Out",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}