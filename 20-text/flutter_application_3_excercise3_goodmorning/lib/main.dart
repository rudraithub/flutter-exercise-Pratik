import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text("wishes",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 40
          ),
          ),
        ),
        body: Container(
          child : Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Good Morning",
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Colors.amberAccent.shade700,
                decorationThickness: 2
              ),
              ),
              Text("Good Evening",
              style: TextStyle(
                color: Color.fromARGB(255, 218, 211, 16),
                fontSize: 40,
                fontWeight: FontWeight.w500,
                fontStyle:FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.amberAccent.shade700,
                decorationThickness: 2
              ),
              ),
              Text("Good Night",
              style: TextStyle(
                color: const Color.fromARGB(255, 247, 8, 8),
                fontSize: 25,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Colors.amberAccent.shade700,
                decorationThickness: 2
              ),
              ),
              Text("Greeting,planet!",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 40,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Color.fromARGB(255, 255, 21, 0),
                decorationThickness: 1
              ),
              )
            ],
          )
          
          ),
        ),
      ),
    )
  );
}

