import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
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
        title: Text("Test..."),
      ),
      body: Center(
        child: Container(
          // height: 200,
          // width: 200,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(height: 20,),

              CircleAvatar(
                backgroundImage: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.TYJqmFIrO3WDbgmf8QsAowAAAA&pid=Api&P=0&h=180"),
                radius: 20,
              ),
              SizedBox(height: 20,),
              TextField(                
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefix: Icon(Icons.person),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    )
                  ),
                  
                  labelText: "Name",          
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    )
                  )        
                ),
                
              ),
 SizedBox(height: 20,),
              TextField(                
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    )
                  ),
                  prefix: Icon(Icons.abc),
                  labelText: "Name",          
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    )
                  )        
                ),
                
              ),
 SizedBox(height: 20,),
              TextField(                
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    )
                  ),
                  prefix: Icon(Icons.abc),
                  labelText: "Name",          
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    )
                  )        
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}