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
                height: 700,
                width: 70,
                color: Colors.black87,                
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 700,
                width: 70,
                color: Colors.pink,
                // decoration: BoxDecoration(
                //   color: Color.fromARGB(255, 124, 227, 7)
                // ),
                ),
                SizedBox(width: 5,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 140,
                          color: Colors.amberAccent,
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 200,
                          width: 55,
                          color: Colors.cyanAccent,
                        ),
                      ],                      
                    ),
                      SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 81, 255, 0),
                    ),
                      SizedBox(height: 5,),
                    Container(
                      height: 140,
                      width: 200,
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