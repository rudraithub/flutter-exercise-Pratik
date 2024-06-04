import 'package:flutter/material.dart';

class thir_navi extends StatelessWidget {
  const thir_navi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Click-here-3")),
    ),
    );
  }
}