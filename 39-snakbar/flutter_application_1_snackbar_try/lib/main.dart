import 'package:flutter/material.dart';

void main()
{
  runApp(myap());
}

class myap extends StatelessWidget {
  const myap({super.key});

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
        centerTitle: true,
        title: Text("Snack-bar"),
      ),
      body: ElevatedButton(onPressed: (){
        final skbar = SnackBar(
          content: Text("item deleted"),
          action: SnackBarAction(label: "done", onPressed: (){}),
          duration: Durations.extralong4,
          );
          ScaffoldMessenger.of(context).showSnackBar(skbar);
      }, child: Text("Click here")),
    );
  }
}