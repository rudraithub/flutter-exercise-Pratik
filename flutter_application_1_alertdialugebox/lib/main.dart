import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: alertdemo(),
    );
  }
}

class alertdemo extends StatefulWidget {
  const alertdemo({super.key});

  @override
  State<alertdemo> createState() => _alertdemoState();
}

class _alertdemoState extends State<alertdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alert dialogbox"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showDialog(context: context,
                 builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("payment alert"),//dialog box msg
                    content: Text("Do you really want to pay ?"),//alert msg
                    actions: [
                      TextButton(onPressed: (){}, child: Text("Yes"),),//yes
                      TextButton(onPressed: (){}, child: Text("No"),),//no
                      TextButton(onPressed: (){
                        //click event
                        Navigator.of(context).pop();//to close dialog box
                      }, child: Text("Cancel"),),//cancel
                    ],
                  );
                 },);
              }, child: Text("Click Here"),),
            ],
          ),
        ),
      ),
    );
  }
}