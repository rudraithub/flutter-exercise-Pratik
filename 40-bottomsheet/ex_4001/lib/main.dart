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
      home: Exercise(),
    );
  }
}

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Rudra It Hub",style: TextStyle(color: Colors.green[900]),),
                ElevatedButton(onPressed: (){}, child: Text("Close Bottom Sheet"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900],foregroundColor: Colors.white),
                ),
            
                Text("I Am BottomSheet",style: TextStyle(color: Colors.green[900]))
            
              ],
            ),
          ),
          backgroundColor: Colors.green[300]
          );
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.green[300]
        ),
        child: Text("Show Bottom Sheet"),
        
        ),
      ),
    );
  }
}