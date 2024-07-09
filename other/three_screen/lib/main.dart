import 'package:flutter/material.dart';
import 'package:three_screen/com_widget.dart';
import 'package:three_screen/login.dart';
import 'package:three_screen/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_screen(),
    );
  }
}

class first_screen extends StatefulWidget {
  const first_screen({super.key});

  @override
  State<first_screen> createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              child: Image.network("https://cdn.pixabay.com/photo/2024/06/28/07/14/success-8858776_1280.jpg",fit: BoxFit.cover,),
            ),
            SizedBox(height: 150,),
            Container(
              width: 320,
              child: com_btn(ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login_page()));
              }, btnname: "Login", textcol: Colors.white, backcol: Colors.black),
              ),
            SizedBox(height: 15,),
            Container(
              width: 320,
              child: com_btn(ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register_page()));
              }, btnname: "Register", textcol: Colors.black, backcol: Colors.transparent),
              ),
            SizedBox(height: 30,),
            Container(
              child: com_text(onpress: (){}, name: "Continue as a guest"),
            ),
          ],
        ),
      ),
    );
  }
}