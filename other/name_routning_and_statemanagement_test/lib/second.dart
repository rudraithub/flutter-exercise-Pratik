import 'package:flutter/material.dart';
import 'package:get/get.dart';

class second_page extends StatelessWidget {
  const second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second Page"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text("This is second page"),),),
    );
  }
}