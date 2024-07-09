import 'package:flutter/material.dart';

class nexts extends StatelessWidget {
  const nexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Image.network("https://images.pexels.com/photos/1322444/pexels-photo-1322444.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
    );
    
    
  }
}