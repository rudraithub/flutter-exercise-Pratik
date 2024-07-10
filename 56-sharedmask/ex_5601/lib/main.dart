import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shader Mask Demo"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green,
              Colors.blue,
              Colors.purple
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight
            )
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: ((Rect bound){
            return RadialGradient(
              center: Alignment.center,
              radius: 3,
              tileMode: TileMode.mirror,
              colors: [
              Colors.redAccent,
              Colors.purpleAccent,
              const Color.fromARGB(255, 15, 59, 95)
            ]).createShader(bound);
          }),
          child: Text("Shader Mask Demo",textScaleFactor: 8,),
          ),
        ),
      ),
    );
  }
}