import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

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
  double left = 0.9;
  double top = 0.9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("draggeble demo"),
      ),
      body: 
        Stack(
          children: [
            Positioned(
                left: left,
                top: top,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    top = max(0, top + details.delta.dy);
                    left = max(0, left + details.delta.dx);
                    setState(() {});
                  },
                  dragStartBehavior: DragStartBehavior.down,
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple[200],
                    child: Center(
                      child: Text(
                        "Drage Me",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white), 
                      ),
                    ),
                  ),
                ))
          ],
        ),
    );
  }
}