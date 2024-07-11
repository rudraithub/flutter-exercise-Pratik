import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  //  double height = 100;
  // double Width = 100;
  // Color color = Colors.purple;
  double radius = 15;
  bool isexpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animation"),
        backgroundColor: Colors.brown[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            InkWell(
          onTap: (){
            var random = Random();
            setState(() {
             isexpand = !isexpand;
            });
            radius = random.nextInt(50).toDouble();
          },
          child: AnimatedContainer(duration: Duration(seconds: 3),
          height: isexpand ? 200 : 100,
          width: isexpand ? 200 : 100,
          decoration: BoxDecoration(color:  isexpand ? Colors.purple[200] : Colors.green[300],borderRadius: BorderRadius.circular(radius)),

          ),
        ),


          ],
        ),
      ),
    );
  }
}