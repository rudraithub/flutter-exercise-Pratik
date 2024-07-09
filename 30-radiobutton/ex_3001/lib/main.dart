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
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(value: "Yes", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("Yes"),
              selectedTileColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "No", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("No"),
              selectedTileColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "Other", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("Other"),
              selectedTileColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}