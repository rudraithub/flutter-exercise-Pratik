import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dialogue Box"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context)=>AlertDialog(
            title: Text("Invalid OTP"),
            content:Text("Please Enter Correct OTP") ,
            actions: [
              TextButton(onPressed: (){}, child: Text("OK"))
            ],
          ));
        }, child: Text("Show Dialogue")),
      ),
    );
  }
}