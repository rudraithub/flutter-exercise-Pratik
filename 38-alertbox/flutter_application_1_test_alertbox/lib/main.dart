import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: alertd(),
    );
  }
}

class alertd extends StatefulWidget {
  const alertd({super.key});

  @override
  State<alertd> createState() => _alertdState();
}

class _alertdState extends State<alertd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog-Box"),
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
                  title: Text("Payment Alert DialogBox"),
                  content: Text("Do you really want to pay ?"),
                  actions: [
                    TextButton(onPressed: (){}, child: Text("Yes")),
                    TextButton(onPressed: (){}, child: Text("No")),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Cancel")),
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