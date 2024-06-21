import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  DateTime? dt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Date-Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              DateTime? datet = await showDatePicker(context: context, firstDate: DateTime(2004), lastDate: DateTime(2024));
              if (datet != null)
              {
                setState(() {
                  dt = datet;
                });
              }
            }, child: Text("select your death day💀")),
            if (dt != null)
              Text("${dt!.day}/${dt!.month}/${dt!.year}"),
          ],
        ),
      ),
    );
  }
}