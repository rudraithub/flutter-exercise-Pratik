import 'package:flutter/material.dart';

void main() {
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

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alert Box"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showDialog(context: context,
                 builder: (BuildContext context)=>AlertDialog(
                  title: Text("Alert"),
                  content: Text("Do You Want To Exit ?"),
                  actions: [
                    TextButton(onPressed: (){

                    },
                     child: Text("Yes")),
                     TextButton(onPressed: (){
                      Navigator.pop(context,"No");
                     },
                      child: Text("No")),
                      TextButton(onPressed: (){
                        Navigator.pop(context,"Cancel");
                      }, 
                      child: Text("Cancel")),
                  ],
                 ));
              },
               child: Text("Alert Box",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}