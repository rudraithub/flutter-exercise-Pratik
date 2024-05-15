import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 254, 21, 0),
          centerTitle: false,
          title: Text("row & column",
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
                Text("This is a Column",
              style: TextStyle(
              fontSize: 30,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text.rich(
              TextSpan(
                text: "Name:",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
                children: <InlineSpan>
                [
                  TextSpan(
                    text: " Pratik Joshi",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 238, 0, 24),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
                  text: "❤️Email:",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 61, 122, 12),
                  ),
                 ), 
                 TextSpan(
                  text: "dopinder007@gmail.com",
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