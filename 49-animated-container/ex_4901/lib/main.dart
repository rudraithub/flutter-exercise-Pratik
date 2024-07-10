import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  double height = 100;
  double Width = 100;
  Color color = Colors.purple;
  double radius = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            var random = Random();
            setState(() {
              height = random.nextInt(300).toDouble();
              Width = random.nextInt(300).toDouble();
              color = Color.fromARGB(random.nextInt(255), 
              random.nextInt(255), 
              random.nextInt(255),
               random.nextInt(10));
            });
            radius = random.nextInt(50).toDouble();
          },
          child: AnimatedContainer(duration: Duration(seconds: 3),
          height: height,
          width: Width,
          decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(radius)),

          ),
        ),
      ),
    );
  }
}