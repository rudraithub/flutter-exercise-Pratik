import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home",
          textAlign: TextAlign.center,
          textDirection:TextDirection.ltr,
          style:TextStyle(backgroundColor: Colors.brown,color: Colors.cyan),
          ),
        ),
        body: Text("this is body page...",
                  textAlign: TextAlign.center,
                   textDirection: TextDirection.ltr,
                   style: TextStyle
                   (
                      color: Colors.deepPurpleAccent,
                        backgroundColor: Colors.lightBlueAccent,)
      ),
      ),
    )
  );
}
// runApp(
//     Scaffold(appBar: AppBar(
//     title: Text("hello world",
//     textDirection: TextDirection.ltr,
//     textScaleFactor: 12,
//     textAlign: TextAlign.center,),
//     ),
//     )
//   );