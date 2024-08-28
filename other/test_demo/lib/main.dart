import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_demo/class.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

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
        title: Text("demogetx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<apicotro>(
              init: apicotro(),
              // id: '123',
              builder: (z)=>Text("${z.count}"),
            ),

            OutlinedButton(onPressed: (){
              var obj = Get.find<apicotro>();
              obj.incere();
            }, child: Text("click")),

            //-----------------
            GetX<apicotro>(
              init: apicotro(),
              builder: (x)=>Text("${x.c}"),
              ),

              TextButton(onPressed: (){
                var ox = Get.find<apicotro>();
                ox.decre();
              }, child: Text("Hit-me")),
          ],
        ),
      ),
    );
  }
}