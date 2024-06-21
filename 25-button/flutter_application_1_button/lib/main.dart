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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button"),
      ),
      body: Center(
        child: Container(
          height:70,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 5, 2, 44),
            width: 2),
            // color: const Color.fromARGB(255, 249, 248, 248),
            borderRadius: BorderRadius.circular(20),
            ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [              
              InkWell(
                onTap: (){
                  print("Button Click");
                },
                child: Text("Click",style: TextStyle(color: Color.fromARGB(255, 83, 3, 90),fontSize: 30),),
                splashColor: Color.fromARGB(243, 166, 9, 158),
                borderRadius:BorderRadius.circular(10),
                hoverColor: Color.fromARGB(255, 230, 184, 232),
              ),
              // Text("Click-here"),
            //  TextButton(onPressed: (){}, child: Text("he")),
            ],
          ),
        ),
      )
    );
  }
}