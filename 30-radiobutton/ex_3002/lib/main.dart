import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String option='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Radio Button"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(value: "North", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("North"),
              activeColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "South", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("South"),
              activeColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "East", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("East"),
              activeColor: Colors.purple,
              ),
               SizedBox(height: 10,),
              RadioListTile(value: "West", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("West"),
              activeColor: Colors.purple,
              
              ),
            ],
          ),
        ),
      ),
    );
  }
}