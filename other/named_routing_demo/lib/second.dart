
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  secound extends StatelessWidget {
  const secound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Routing & State Management"),),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text("Second Page")),
          ),
          Text(Get.parameters['a']??''),
          Text(Get.parameters['b']??''),
        ],
      ),
    );
  }
}
