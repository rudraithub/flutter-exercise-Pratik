import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 246, 132, 1),
          centerTitle: false,
          title: Text("column and row excercise",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87
          ),
          ),
        ),
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children :
              [
                Text("This is My Column Excercise",
              style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 32, 14, 55),
              fontWeight: FontWeight.bold,
            ),
            ),
            Text.rich(
              TextSpan(
                text: "Name:",
                style: TextStyle(
                  color: Color.fromARGB(255, 15, 235, 4),
                  fontSize: 20,
                ),
                children: <InlineSpan>
                [
                  TextSpan(
                    text: " Dopinder Joshi",
                    style: TextStyle(
                      color: Color.fromARGB(255, 141, 1, 124),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: <InlineSpan>
                [
                 TextSpan(
                  text: "💌 Email:",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 61, 122, 12),
                  ),
                 ), 
                 TextSpan(
                  text: "dopinderjoshi007@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                  )
                 )
                ],
              ),
            ),
          ],
            ),
            ),
          ),
        ),
  );
}
  

