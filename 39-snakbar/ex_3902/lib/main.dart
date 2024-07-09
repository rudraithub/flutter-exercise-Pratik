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
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: Text("SnackBar"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                final snackBar = SnackBar(
                  content: Text("This is Demo of Snackbar"),
                    action: SnackBarAction(label: "Click", onPressed: (){}),
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.pink,
                    showCloseIcon: true,
                    closeIconColor: Colors.black,
                    
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
               child: Text("Show SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}