import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver App Bar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Image.network(
                "https://images.pexels.com/photos/1456291/pexels-photo-1456291.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Card(
              child: Container(
                color: Colors.blue[900],
                height: 80,
                width: double.infinity,
                child: Text("Item 0"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[800],
                height: 80,
                width: double.infinity,
                child: Text("Item 1"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[700],
                height: 80,
                width: double.infinity,
                child: Text("Item 2"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[600],
                height: 80,
                width: double.infinity,
                child: Text("Item 3"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[400],
                height: 80,
                width: double.infinity,
                child: Text("Item 4"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[300],
                height: 80,
                width: double.infinity,
                child: Text("Item 5"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[200],
                height: 80,
                width: double.infinity,
                child: Text("Item 6"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[100],
                height: 80,
                width: double.infinity,
                child: Text("Item 7"),
              ),
            ),
            Card(
              child: Container(
                color: Colors.blue[50],
                height: 80,
                width: double.infinity,
                child: Text("Item 8"),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}