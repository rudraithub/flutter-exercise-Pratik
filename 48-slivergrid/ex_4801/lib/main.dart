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
      home:Demo() ,
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
      appBar: AppBar(title: Text("Sliver Grid Demo"),centerTitle: true,),
      body: CustomScrollView(
        slivers: [
          SliverGrid(delegate: SliverChildListDelegate([
            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 1",textScaleFactor: 3,),),
              ),
            ),

            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 2",textScaleFactor: 3,),),
              ),
            ),

            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 3",textScaleFactor: 3,),),
              ),
            ),

            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 4",textScaleFactor: 3,),),
              ),
            ),

            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 5",textScaleFactor: 3,),),
              ),
            ),

            Card(
              child: Container(
                color: Colors.pinkAccent[100],
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Item 6",textScaleFactor: 3,),),
              ),
            ),
          ]), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      ),
    );
  }
}