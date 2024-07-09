import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_routning_and_statemanagement_test/first.dart';
import 'package:name_routning_and_statemanagement_test/second.dart';
import 'package:name_routning_and_statemanagement_test/unknown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/demo",
      getPages: [
        GetPage(name: "/demo", page: ()=>demo()),
        GetPage(name: "/first_page", page: ()=>first_page()),
        GetPage(name: "/second_page", page: ()=>second_page()),
        // GetPage(name: "/unknown_page", page: ()=>second_page()),
      ],
      unknownRoute: GetPage(name: "/unknown_page", page: ()=>unknown_page()),
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
        title: Text("Home Page"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Get.toNamed("/first_page?a=1&b=2");
      }, child: Text("This is Home Page"),),),
    );
  }
}