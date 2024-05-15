import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("The Tiger",style: TextStyle(
          color: Colors.black87,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ) 
        ),
        ),  
        body: Container(
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "NAME:",
                style: TextStyle(
                  color: Colors.amber,
                  fontStyle: FontStyle.italic,
                  fontSize: 20
                ),
                children: <InlineSpan>
                [
                  TextSpan(
                    text: "pratik",
                    style: TextStyle(
                      color: Colors.cyanAccent,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
                
              )
            ),
            
        ),
        ),
        ),
  )
  );
}

//child: Text.rich("NAME:",
          //   style: TextStyle(
          //     color: Colors.black45,
          //     fontStyle: FontStyle.italic,
          //     fontWeight: FontWeight.w900,
          //     fontSize: 20
          //   ),
          //   ),
          //   child :Text.rich("pratik",
          //   style: TextStyle(
          //     color: Colors.cyan,
          //     fontSize: 40,
          //   ),
          //   )
          // ),