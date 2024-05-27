import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 79, 4, 4),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 500,
                color: Colors.amberAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                   SizedBox(
                    width: 10,     
                ),
                  Container(
                    height: 80,
                    width: 170,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10,     
                ),
                Container(
                  height: 80,
                  width: 175,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                    width: 10,
                ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
                 Row(
                children: [
                  SizedBox(
                width: 10,
              ),
                  Container(
                    height: 300,
                    width: 100,
                    color: const Color.fromARGB(255, 0, 83, 227),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height:300 ,
                    width: 100,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        height: 150,
                        width: 125,
                        color: const Color.fromARGB(255, 113, 64, 0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 135,
                        width: 125,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  )
                ],
                
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

