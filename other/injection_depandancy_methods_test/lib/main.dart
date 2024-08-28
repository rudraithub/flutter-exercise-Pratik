import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injection_depandancy_methods_test/class.dart';

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

    var api = Get.create(()=>apicontrol());
    var api2 = Get.put(()=>apicontrol());
     var api12 = Get.put(()=>apicontrol());
    var api3 = Get.lazyPut(()=>apicontrol());
    // var apicontrol = Get.lazyPut(()=>api3());

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dependancy Injection"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height/1.5,
                width: size.width/1.6,
                color: Colors.black38,
              ),

              ElevatedButton(onPressed: (){
                var d = Get.find<apicontrol>();
                print(d.hashCode);
                print(api2.hashCode);
              }, child: Text("Click"),),
              ElevatedButton(onPressed: (){
                print(api12.hashCode);
              }, child: Text("not click")),
            ],
          ),
        ),
      ),
    );
  }
}