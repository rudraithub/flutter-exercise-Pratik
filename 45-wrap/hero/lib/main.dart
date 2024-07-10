import 'package:flutter/material.dart';
import 'package:hero/nextscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero & Wrap & Opacity"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Opacity(
                    opacity: 0.3,
                    child: Container(
                      color: Colors.red,
                      height: 200,
                      width: 180,
                    ),
                  ),
                  Container(
                      color: const Color.fromARGB(255, 105, 244, 54),
                      height: 200,
                      width: 180,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 54, 238, 244),
                      height: 200,
                      width: 180,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 244, 54, 216),
                      height: 200,
                      width: 180,
                    ),
                    Container(
                      color: Color.fromARGB(255, 92, 54, 244),
                      height: 200,
                      width: 180,
                    ),
                ],
              ),
          
          
              /*InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>nexts()));
                },
                child: Hero(tag: "Dopinder", child: Image.network("https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg",height: 500,width: double.infinity,),),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}