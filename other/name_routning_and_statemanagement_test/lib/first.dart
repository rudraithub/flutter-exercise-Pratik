
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
            Get.toNamed("/second_page");
            }, 
            child: Text("This is first page"),      
        ),
        Text(Get.parameters["a"]??""),
          ],
        ),
      ),
    );
  }
}