import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
        title: Text("Stack"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.blue[600],
              height: 500,
              width: 500,
            ),

            Container(
              color: Colors.blue[400],
              height: 400,
              width: 400,
            ),

            Container(
              color: Colors.blue[300],
              height: 300,
              width: 300,
            ),

            Container(
              color: Colors.blue[200],
              height: 200,
              width: 200,
            ),

            Container(
              color: Colors.blue[100],
              height: 100,
              width: 100,
              child: Icon(Icons.lock,color: Colors.white54,size: 50,),
            ),
            
          ],
        ),
      ),
    );
  }
}