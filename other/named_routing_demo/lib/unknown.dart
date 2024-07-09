
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  Unknownpage extends StatelessWidget {
  const Unknownpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Routing & State Management"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.back();
        }, child: Text("unknown Page")),
      ),
    );
  }
}
