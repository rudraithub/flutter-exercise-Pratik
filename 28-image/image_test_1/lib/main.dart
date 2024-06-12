import 'package:flutter/material.dart';
import 'package:image_test_1/img_com.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demmo(),
    );
  }
}

class demmo extends StatefulWidget {
  const demmo({super.key});

  @override
  State<demmo> createState() => _demmoState();
}

class _demmoState extends State<demmo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Demo..."),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              img(bacimg: "https://images.pexels.com/photos/20175138/pexels-photo-20175138/free-photo-of-a-woman-sitting-on-the-ground-with-her-phone.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              SizedBox(height: 20,),
              clipimg(cliimg: "https://images.pexels.com/photos/12189051/pexels-photo-12189051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", h: 300, w: 330,),
            ],
          ),
        ),
      ),
    );
  }
}