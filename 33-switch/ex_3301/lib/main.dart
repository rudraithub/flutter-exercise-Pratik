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
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool isvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switch"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
              activeColor: Colors.pink,
              activeTrackColor: Colors.purple,
              inactiveTrackColor: Colors.yellow,
              inactiveThumbColor: Colors.green,
              value: isvalue,
               onChanged: (value){
                setState(() {
                  isvalue=value;
                });
              }),
              SizedBox(height: 20,),
              Text("Value = ${isvalue}")
            ],
          ),
        ),
      ),
    );
  }
}