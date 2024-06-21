import 'package:flutter/material.dart';

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
  bool p=false;
  bool x=false;
  bool y=false;
  var q="",r="",s="";
  String z="";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("checkbox & radio button"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CheckboxListTile(
                mouseCursor: MouseCursor.uncontrolled,
                title: Text("cricket"),
                tileColor: Color.fromARGB(255, 5, 72, 81),
                value: p,
                onChanged: (val){
                  setState(() {
                    p=val!;

                  if (p==true) 
                  {
                    q="cricket selected" ;
                  }
                  else
                  {
                    q="";
                  }
                  });                  
              }),
              Text("$q"),
              //second ckeckbox
               CheckboxListTile(
                mouseCursor: MouseCursor.uncontrolled,
                title: Text("vollyball"),
                tileColor: Color.fromARGB(255, 8, 145, 8),
                value: x,
                onChanged: (val){
                  setState(() {
                    x=val!;

                  if (x==true) 
                  {
                    r="vollyball selected" ;
                  }
                  else
                  {
                    r="";
                  }
                  });                  
              }),
              Text("$r"),
              //third checkbox
              CheckboxListTile(
                mouseCursor: MouseCursor.uncontrolled,
                title: Text("gaming"),
                tileColor: Color.fromARGB(255, 48, 4, 93),
                value: y,
                onChanged: (val){
                  setState(() {
                    y=val!;

                  if (y==true) 
                  {
                    s="gaming selected" ;
                  }
                  else
                  {
                    s="";
                  }
                  });                  
              }),
              Text("$s"),

              //radio
              RadioListTile(
                title: Text("Male"),
                value: "Male", groupValue: z, onChanged: (valu){
                setState(() {
                  // Text("Male");
                  z=valu!;
                });                
              }),
              // Text("$z"),
              //second radio
              RadioListTile(
                title: Text("FeMale"),
                value: "FeMale", groupValue: z, onChanged: (valu){
                setState(() {
                  z=valu!;
                });                
              }),
              Text("$z"),
            ],
          ),
        ),
      ),
    );
  }
}