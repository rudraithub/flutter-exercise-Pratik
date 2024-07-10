import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  List x =['male','female'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shader-Mask & Pop_up-Menu"),
      ),
      body: Column(
        children: [
          Center(
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect z) {
                return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        tileMode: TileMode.clamp,
                        // radius: 3,
                        colors: [Color.fromARGB(255, 233, 99, 3), Color.fromARGB(255, 242, 250, 6)],
                        )
                    .createShader(z);
              },
              child: Text(
                "Shader-Mask",
                textScaleFactor: 5,
              ),
            ),
          ),
          PopupMenuButton(
            onSelected: (value) {
              if (value=='male') {
                print('male');
              }
              else
              {
                print('female');
              }
            },
            itemBuilder: (context){
            return x.map((e)=>PopupMenuItem(child: Text(e),value: e,)).toList();
          },
          child: Icon(Icons.perm_identity_sharp),
          ),
        ],
      ),
    );
  }
}
