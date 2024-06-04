import 'package:flutter/material.dart';
import 'package:flutter_application_1_common_widgets/c_btn.dart';


void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

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
      appBar: AppBar(title: Text("Common Widget Demo"),),
      body: Column(
        children: [
          // custom_btn(tname: "Custome Button", tColor: Color.fromARGB(255, 207, 0, 0), onPressed: (){},bgColor: Colors.blue,),
          // custom_btn(tname: "Custome Button2", tColor: Colors.white, onPressed: (){}, bgColor: Colors.black),
          // custom_btn(tname: "Custome Button3", tColor: Colors.white, onPressed: (){}, bgColor: Colors.black),
          // custom_btn(tname: "Custome Button4", tColor: Colors.white, onPressed: (){}, bgColor: Colors.black),
          custom_btn(tname: "Pratik", tColor: Colors.amberAccent, onPressed: (){}, bgColor: Colors.deepPurpleAccent),
          // custom_btn(tname: tname, tColor: tColor, onPressed: onPressed, bgColor: bgColor)
        ],
      ),

    );
  }
}