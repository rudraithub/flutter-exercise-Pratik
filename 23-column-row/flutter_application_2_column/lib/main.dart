import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 5, 5),
        body: Container(
          child: Row(
            children: [
              SizedBox(
                  width: 10,
                ),
              Container(
                height: 647,
                width: 100,
                color: Colors.black87,                
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 647,
                width: 100,
                color: Colors.pink,
                // decoration: BoxDecoration(
                //   color: Color.fromARGB(255, 124, 227, 7)
                // ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 1000,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 250,
                          width: 500,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          height: 250,
                          width: 500,
                          color: Colors.cyanAccent,
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 1000,
                      color: Color.fromARGB(255, 81, 255, 0),
                    ),
                    Container(
                      height: 80,
                      width: 1000,
                      color: const Color.fromARGB(255, 0, 60, 255),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    ),
  );
}

// SizedBox(
              //   width: 10,
              //   // height: 10,
                // ),