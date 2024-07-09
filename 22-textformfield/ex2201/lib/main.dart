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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 246, 143),
        title: Text("Text Field Demo"),
        
      ),
      body: Center(
        child: Container(
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 3,color: Colors.blueAccent)
              ),
              prefix: Icon(Icons.person_2),
              hintText: "Enter UserName",
            ),
          ),
        ),
      ),
    );
  }
}