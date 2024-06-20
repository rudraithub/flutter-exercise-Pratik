import 'package:flutter/material.dart';
import 'package:inkwell_test/custom_inkwell.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: Text("Ink-Well using Image"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         img_inkwell(
          img: "https://images.pexels.com/photos/18090586/pexels-photo-18090586/free-photo-of-young-woman-in-lana-del-ray-crop-top-and-mini-skirt-sitting-on-the-hood-of-an-old-mercedes.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
          wid: 450, 
          hei: 400,
          ),
        ],
      ),
    );
  }
}