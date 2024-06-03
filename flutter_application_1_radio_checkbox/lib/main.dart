// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> { 
  @override
   bool q=false;
   var r="";
   var p="";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkbox & Radiobtn"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CheckboxListTile(
                mouseCursor: MouseCursor.uncontrolled,
                tileColor: const Color.fromARGB(255, 247, 231, 172),
                checkColor: Colors.pink,
                activeColor: Colors.tealAccent,
                title: Text("Apple"),

                value: q, 
                onChanged: (value){
                
              setState(() {
                q=value!;

                if(q==true)
                {
                  r="item selected";
                  // print("okay");
                }
                else
                {
                  r="";
                }                
              }
              );              
              },
              ),
              SizedBox(height: 20,),
              Text("$r"),
              //sizebox
              SizedBox(height: 30,),
              //radio
              RadioListTile(
                title: Text("MALE"),
                value: "Male", groupValue: p, onChanged: (val){
                  setState(() {
                    p=val!;
                  });
              }),

               RadioListTile(
                title: Text("FEMALE"),
                value: "FeMale", groupValue: p, onChanged: (val){
                  setState(() {
                    p=val!;
                  });
              },
              ),
              Text("$p"),
            ],
          ),
        ),
      ),
    );
  }
}