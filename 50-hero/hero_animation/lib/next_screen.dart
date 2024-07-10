import 'package:flutter/material.dart';

class Nextscreen extends StatefulWidget {
  const Nextscreen({super.key});

  @override
  State<Nextscreen> createState() => _NextscreenState();
}

class _NextscreenState extends State<Nextscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Next Page"),),
      body: Hero(tag: "dopinder", child: Image.network('https://images.pexels.com/photos/1480691/pexels-photo-1480691.jpeg?auto=compress&cs=tinysrgb&w=600')),
    );
  }
}
