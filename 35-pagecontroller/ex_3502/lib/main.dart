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
    return DefaultTabController(length: 4, child: Scaffold(
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
            icon: Icon(Icons.punch_clock,color: Colors.white,),
          ),

          Tab(
            icon: Icon(Icons.error_outline,color: Colors.white,),
          ),

          Tab(
            icon: Icon(Icons.home_repair_service_rounded,color: Colors.white,),
          ),

          Tab(
            icon: Icon(Icons.bus_alert,color: Colors.white,),
          ),
        ]),
      ),
      body: TabBarView(children: [
        Tab(
          icon: Icon(Icons.punch_clock,size: 30,),
        ),

        Tab(
          icon: Icon(Icons.error_outline,size: 30,),
        ),

        Tab(
          icon: Icon(Icons.home_repair_service,size: 30,),
        ),

        Tab(
          icon: Icon(Icons.bus_alert,size: 30,),
        ),
      ]),
    ),
    );
  }
}