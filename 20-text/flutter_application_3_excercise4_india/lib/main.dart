import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent.shade100,
          title: Text("Greetings..."),
        ),
        body:Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("India",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  decoration: TextDecoration.underline,
                ),
                ),
                Text("Good Evening",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.greenAccent.shade700,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
                ),
                Text("Good Night",
                style: TextStyle(
                  fontSize: 50,
                  color: const Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.underline,
                ),
                ),
                Text("Greeting planet!",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  decoration: TextDecoration.underline,
                  decorationColor:Colors.deepPurpleAccent.shade700
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
  );
}

