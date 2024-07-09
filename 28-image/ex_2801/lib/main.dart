import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: img(),
    );
  }
}

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Image"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://images.pexels.com/photos/1461974/pexels-photo-1461974.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 200,width: 200,),
            SizedBox(height: 20,),
            Image.network("https://images.pexels.com/photos/281279/pexels-photo-281279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 200,width: 200,),
          ],
        ),
      ),
    );
  }
}