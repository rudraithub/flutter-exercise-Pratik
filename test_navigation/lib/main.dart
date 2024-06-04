import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_navigation/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demonavi(),
    );
  }
}
class demonavi extends StatefulWidget {
  const demonavi({super.key});

  @override
  State<demonavi> createState() => _demonaviState();
}

class _demonaviState extends State<demonavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fist Page..."),
      ),
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>sec_page()));
        }, child: Text("Click-Here-1"),
        ),
        TextButton(onPressed: (){
          final skbar=SnackBar(
            content: Text("click here"),
            action: SnackBarAction(label: "done", onPressed: (){}),
            duration: Duration(seconds: 6),
            );
            ScaffoldMessenger.of(context).showSnackBar(skbar);
        }, child: Text("snackbar"),),        
        ],
        ),
      ),
    );
  }
}