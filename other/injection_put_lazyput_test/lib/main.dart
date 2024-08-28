import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injection_put_lazyput_test/class.dart';

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
    var api = Get.put(apicontrol(),tag: "1");
    var api5 = Get.put(apicontrol());
    // var api2 = Get.create(()=>apicontrol(),tag: '3');
    // var api3 = Get.lazyPut(()=>apicontrol());
    return Scaffold(
      appBar: AppBar(
        title: Text("Dependancy Injection"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              var obj = Get.find<apicontrol>(tag: '1');
              print(obj.hashCode);
              print(api5.hashCode);
              // print(api2.hashCode);
              
            }, child: Text("hit-me")),
          ],
        ),
      ),
    );
  }
}