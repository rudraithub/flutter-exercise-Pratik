import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dempo(),
    );
  }
}

class dempo extends StatefulWidget {
  const dempo({super.key});

  @override
  State<dempo> createState() => _dempoState();
}

class _dempoState extends State<dempo> {
  List x = ['rudri', 'sanjna', 'dhrumil', 'pratik', 'hetvi'];
  String selectedValue = "pratik";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Card & DropDown"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Container(
                  height: 220,
                  width: 220,
                ),
                color: Colors.black,
                elevation: 200,
                surfaceTintColor: const Color.fromARGB(255, 223, 144, 120),
                shadowColor: Colors.cyan,
              ),
              DropdownButton(
                value: selectedValue,
                items: x.map((z)=>DropdownMenuItem(value: z,child: Text(z))).toList(),
                onChanged: (value){
                    setState(() {
                      selectedValue=value.toString();
                    });
                }
                ),
            ],
          ),
        ),
      ),
    );
  }
}
