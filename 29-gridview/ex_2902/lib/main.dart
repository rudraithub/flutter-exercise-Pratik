
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Grid View"),
        backgroundColor: Colors.black12,
        foregroundColor: Colors.purple,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          Container(
            color: Colors.tealAccent,
            height: 100,
            width: 100,
            child: Center(
                child: Text(
              "This",
              textScaleFactor: 5,
            )),
          ),
          Container(
            color: Color.fromARGB(255, 172, 151, 230),
            height: 100,
            width: 100,
            child: Center(
                child: Text(
              "Is",
              textScaleFactor: 5,
            )),
          ),
          Container(
            color: Color.fromARGB(255, 239, 163, 186),
            height: 100,
            width: 100,
            child: Center(
                child: Text(
              "A",
              textScaleFactor: 5,
            )),
          ),
          Container(
            color: const Color.fromARGB(255, 243, 202, 149),
            height: 100,
            width: 100,
            child: Center(
                child: Text(
              "Rudra It Hub",
              textScaleFactor: 5,
            )),
          ),
        ],
      ),
    );
  }
}
