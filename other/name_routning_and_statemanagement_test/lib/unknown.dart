import 'package:flutter/material.dart';
import 'package:get/get.dart';

class unknown_page extends StatelessWidget {
  const unknown_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("unknown Page"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text("This is unknown page"),
      ),
      ),
    );
  }
}