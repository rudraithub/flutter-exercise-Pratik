import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_builder_test/class.dart';

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
        title: Text("Getx-builder Test"),
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<apicontro>(
              id: "123",
              init: apicontro(),
              builder: (z)=>Text("${z.count}"),
            ),

             GetBuilder<apicontro>(
              // id: "123",
              init: apicontro(),
              builder: (z)=>Text("${z.count}"),
            ),

            OutlinedButton(onPressed: (){
              var obj = Get.find<apicontro>();
              obj.incre();
            }, child: Text("Hit-Me")),

          //--------------------------------------
          /*GetX<apicontro>(
            init: apicontro(),
            builder: (xyz)=>Text("${xyz.count}"),
            ),
            ElevatedButton(onPressed: (){
              var bj = Get.find<apicontro>();
              bj.decre();
            }, child: Text("Click-Me")),*/

          ],
        ),
      ),
    );
  }
}