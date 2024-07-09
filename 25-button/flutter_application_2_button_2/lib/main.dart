import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Btn(),
    );
  }
}

class Btn extends StatefulWidget {
  const Btn({super.key});

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text("Button Demo"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text("Text Button"),
              style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.black,width: 1),
                
              ),
              ),

              SizedBox(height: 10,),

              ElevatedButton(onPressed: (){}, child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.lightBlueAccent,
                side: BorderSide(color: Colors.black,width: 1),
              ),
              ),
              SizedBox(height: 10,),

              OutlinedButton(onPressed: (){}, child: Text("Outlined Button"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.black,width: 1),
              ),
              ),

              SizedBox(height: 10,),

              IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_rounded,size: 30,),
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.black,width: 1),
              )
              ),

              SizedBox(height: 10,),

              FloatingActionButton(onPressed: (){},
              child: Icon(Icons.add_a_photo),
              foregroundColor: Colors.black,
              backgroundColor: Colors.lightBlueAccent,
              splashColor: Colors.blue,
              
              )

            ],
          ),
        ),
      ),
    );
  }
}