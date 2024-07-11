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
      home: Abc(),
      theme: ThemeData(
        highlightColor: Colors.grey,
        splashColor: Colors.blue,
      ),
    );
  }
}

class Abc extends StatefulWidget {
  const Abc({super.key});

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tab Bar"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        bottom: TabBar(
          splashBorderRadius: BorderRadius.circular(15),
          indicatorColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 5,
          
          tabs: [
          Tab(
            icon: Icon(Icons.home,color: Colors.white,),
          ),

          Tab(
            icon: Icon(Icons.feedback,color: Colors.white,),
          ),

          Tab(
            icon: Icon(Icons.exit_to_app,color: Colors.white,),
          ),
        ]),
      ),
      body: TabBarView(children: [
        Tab(
          icon: Icon(Icons.home,size: 30,),
        ),

        Tab(
          icon: Icon(Icons.feedback,size: 30,),
        ),

        Tab(
          icon: Icon(Icons.exit_to_app,size: 30,),
        ),
      ]),
    ),
    );
  }
}