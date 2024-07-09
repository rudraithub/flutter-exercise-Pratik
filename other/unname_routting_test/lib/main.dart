import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("This is Home Screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async{
            var z = await Get.to(first_screen(),
            arguments: "homescreen",
            duration: Duration(seconds: 4),
            transition: Transition.rightToLeftWithFade,
            curve: Curves.easeInOutCubicEmphasized,
            );
            print(z);
          },
          child: Container(
            color: Colors.blue,
            height: 200,
            width: 200,
            child: Text("Home-Screen",textScaleFactor:2,),
          ),
        ),
      ),
    );
  }
}


class first_screen extends StatelessWidget {
  const first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    // String arguments = Get.arguments ?? 'No argument';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("This is first Screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async{
            var y = await Get.to(second_screen(),
            // arguments: "firstscreen",
            // arguments: arguments,
            duration: Duration(seconds: 4),
            transition: Transition.zoom,
            curve: Curves.easeInCubic,
            );
           Text(Get.arguments);
          },
          child: Container(
            color: Color.fromARGB(255, 119, 235, 119),
            height: 200,
            width: 200,
            child: Text("First-Screen",textScaleFactor:2),
          ),
        ),
      ),
    );
  }
}



class second_screen extends StatelessWidget {
  const second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    // String arguments = Get.arguments ?? 'No argument';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("This is second Screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async{
            var x =await Get.offAll((),
            arguments: "secondscreen",
            //  arguments: arguments,
            duration: Duration(seconds: 3),
            transition: Transition.circularReveal,
            curve: Curves.decelerate,
            );
            // print(Get.arguments);
            Text(Get.arguments);
          },
          child: Container(
            color: Color.fromARGB(255, 119, 76, 237),
            height: 200,
            width: 200,
            child: Text("Second-Screen",textScaleFactor:2),
          ),
        ),
        
      ),
    );
  }
}