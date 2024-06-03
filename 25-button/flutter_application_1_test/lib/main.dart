import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("press here"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amberAccent,foregroundColor: Colors.blueAccent),
                ),
                FloatingActionButton(onPressed: (){}
                , child:Icon(Icons.star)),
              ],
            ),
          ),
        ),
      ),
    )
  );
}

