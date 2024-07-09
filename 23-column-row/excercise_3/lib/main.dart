import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 700,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 700,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            SizedBox(
              width: 10,
            ),
           
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
               ),
               SizedBox(height: 10,),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Container(
                  height: 200,
                  width: 140,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 170, 54, 157)),
                ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 48, 148, 211)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 200,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 68, 141, 32)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  width: 200,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 156, 38, 99)),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}