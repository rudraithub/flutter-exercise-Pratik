import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List a = ["selected","not-selected"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pop-up menu And ShaderMask")),
      body: Column(
        children: [
          
          Center(
            child: ShaderMask(
              blendMode: BlendMode.softLight,
              shaderCallback: ((Rect bound) {
                return RadialGradient(
                        center: Alignment.bottomRight,
                        radius: 0.5,
                        colors: [Colors.blue, Colors.amberAccent],
                        tileMode: TileMode.repeated)
                    .createShader(bound);
              }),
              child: Text(
                "Shader mask",
                textScaleFactor: 8,
              ),
            ),
          ),
  PopupMenuButton(onSelected: (value){
    if(value == "selected"){
      print("selected");

    }
    else{
      print("not selected");
    }
  },itemBuilder: (context) {
    return a.map((e)=> PopupMenuItem(value: e,child: Text(e),)).toList();
  },
  child: Icon(Icons.lightbulb),
  )
        ],
      ),
    );
  }
}

