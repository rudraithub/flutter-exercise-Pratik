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
            actions: [
              Icon(Icons.chat,size: 30,color: Colors.white,),
              Icon(Icons.settings,size: 30,color: Colors.white,),
              Icon(Icons.logout_outlined,size: 30,color: Colors.white,),
            ],
            leading: Icon(Icons.list_rounded,color: Colors.white,),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver App Bar",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),
                
              ),
             
              centerTitle: true,
              background: Image.network(
                "https://images.pexels.com/photos/1707213/pexels-photo-1707213.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Card(
              child: Container(
                color: Colors.purple[300],
                height: 80,
                width: double.infinity,
                child: Center(child: Text("0",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Center(child: Text("1",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.purple[300],
                height: 80,
                width: double.infinity,
                child: Center(child: Text("2",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Center(child: Text("3",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.purple[300],
                height: 80,
                width: double.infinity,
                child: Center(child: Text("4",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Center(child: Text("5",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.purple[300],
                height: 80,
                width: double.infinity,
                child: Center(child: Text("6",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Center(child: Text("7",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
            Card(
              child: Container(
                color: Colors.purple[300],
                height: 80,
                width: double.infinity,
                child: Center(child: Text("8",style: TextStyle(color: Colors.purple[700],fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}