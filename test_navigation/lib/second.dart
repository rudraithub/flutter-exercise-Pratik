import 'package:flutter/material.dart';
import 'package:test_navigation/third.dart';

class sec_page extends StatelessWidget {
  const sec_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
      ),
      body: Center(
      child: ElevatedButton(onPressed: (){
        // Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>thir_navi()));
      }, child: Text("Click-here-2")),
    ),
    );
  }
}