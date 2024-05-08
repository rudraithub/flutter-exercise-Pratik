import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("hello world",style: TextStyle(color: Colors.blueAccent,backgroundColor: Colors.pink,fontSize:40,decoration: TextDecoration.underline,decorationColor: Colors.deepPurpleAccent,)
            ),
          ),
        ),
      ),
    )
  );
}

// decoration style : textdecorationstyle,dotted ---- for dotted underline