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
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});
  // final VoidCallback onpressed;
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("HELLO!!");
            // Text("HELLOOO!!!");
          },
         
          child: Container(

                height: 50,
                width: 150,
                child: Center(
                  child:Text("Tap Me"),
                  
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(color: Colors.black,width: 3),
                  
                ),
                
                
              ),
               splashColor: Color.fromARGB(255, 253, 171, 251),
               borderRadius: BorderRadius.circular(20),
               hoverColor: Color.fromARGB(255, 170, 220, 242),
        )   
          ),
    );
  }
}