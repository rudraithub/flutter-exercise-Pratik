import 'package:camera_test/class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
  GCcontroller controler = Get.put(GCcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera & Gallary"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(controler.ImagePath.string),
            Text(controler.ImageSize.string),
          ],
        ),
      ),
    );
  }
}