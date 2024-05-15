import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.pinkAccent.shade700,
        centerTitle: true,
        title: Text("Thala '7'",
        style:TextStyle(
          fontSize: 40,
          color: Colors.black87,
          decoration: TextDecoration.underline
        ),
        ),
      ),
      body: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amberAccent,),color: Color.fromARGB(255, 212, 139, 164)
      ),
        child: Center(
          child: Text.rich(
            TextSpan(
              text: "1",
              style: TextStyle(
                color: Colors.tealAccent,
              fontSize: 70,
              fontWeight: FontWeight.bold,
              ),
              children: <InlineSpan>[
                TextSpan(
                  text: "2",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: "3",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 50
                  )
                ),
                TextSpan(
                  text: "4",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  )
                ),
                TextSpan(
                  text: "5",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  )
                ),
                TextSpan(
                  text: "6",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  )
                ),
                TextSpan(
                  text: "7",
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  )
                )
              ]
            )
          ),
        ),
      ),
    )
    )
  );
}