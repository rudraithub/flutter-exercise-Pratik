import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("my name is pratik",style: TextStyle
          (
            color: Colors.pink,
            backgroundColor: Colors.amber,
            fontSize: 40,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
          ),
          ),
        ),
      ),
    ),
  );
}

