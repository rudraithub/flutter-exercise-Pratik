import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_reactive_statement_test/class.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GETX reactive State-Management"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            GetX<apicontroller>(
              init: apicontroller(),
              builder: (z)=>Text("${z.count}"),
              ),
              TextButton(onPressed: (){
                var obj = Get.find<apicontroller>();
                obj.incerement();
              }, child: Text("Click-Me"),),
          ],
        ),
      ),
    );
  }
}