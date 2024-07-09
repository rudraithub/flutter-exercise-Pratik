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
   var parson = List<String>.generate(50, (i) => "Hello Flutter ${i}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: Text("List View"),
       
      ),
      body: ListView.builder(itemBuilder: (BuildContext context,index){
        return ListTile(
          leading: Icon(Icons.list),
          title: Text("${parson[index]}"),
          trailing: Text("Rudra IT Hub"),
          tileColor: Colors.pink[100],
        );
      }),
    );
  }
}