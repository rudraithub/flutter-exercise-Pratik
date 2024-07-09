
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
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Please Select Your Language.",style: TextStyle(color: Color.fromARGB(255, 138, 25, 142),fontSize: 20),),
              SizedBox(height: 20,),
              RadioListTile(value: "Flutter", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("Flutter"),
              activeColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "Node JS", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("Node JS"),
              activeColor: Colors.purple,
              ),
              SizedBox(height: 10,),
              RadioListTile(value: "React", groupValue: option, onChanged: (value){
                setState(() {
                  option = value!;
                });
              },
              title: Text("React"),
              activeColor: Colors.purple,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
