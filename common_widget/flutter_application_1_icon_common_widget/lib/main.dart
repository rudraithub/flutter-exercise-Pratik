import 'package:flutter/material.dart';
import 'package:flutter_application_1_icon_common_widget/com_icon.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dem(),
    );
  }
}

class dem extends StatefulWidget {
  const dem({super.key});

  @override
  State<dem> createState() => _demState();
}

class _demState extends State<dem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      title: Text("Icon..."),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon(ico: Icons.accessibility, size: 50, icol: Colors.black),
              SizedBox(height: 50,),
              icon(ico: Icons.accessibility_new, size: 50, icol: Colors.blueAccent),
              SizedBox(height: 50,),
              icon(ico: Icons.accessibility_sharp, size: 50, icol: Colors.deepPurpleAccent),

            ],
          ),
        ),
      ),
    );
  }
}