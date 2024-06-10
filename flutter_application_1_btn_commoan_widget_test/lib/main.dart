import 'package:flutter/material.dart';
import 'package:flutter_application_1_btn_commoan_widget_test/com_btn.dart';

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
        title: Text("Floating Action Button..."),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:float_btn(tiger: (){}, fabname: "FloatinngActionButton", fabcol: Colors.black, fabbgcol: Colors.transparent, fabweight: FontWeight.w100, bgcol: Colors.blueAccent,),
              
            ),
          ],
        ),
      ),
    );
  }
}