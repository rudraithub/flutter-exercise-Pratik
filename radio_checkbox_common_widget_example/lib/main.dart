import 'package:flutter/material.dart';
import 'package:radio_checkbox_common_widget_example/com_wid.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  
  //radio
  String gender = '';

  //checkbox
  bool check = false;
  bool checkk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkbox & Radio"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              com_radio(val: "Male", groupval: gender, nam: 'Male', onchange: (value){
                setState(() {
                  gender=value!;
                });
              },
              ),

            SizedBox(height: 10,),

              com_radio(val: "Female", groupval: gender, nam: 'female', onchange: (value){
                setState(() {
                  gender=value!;
                });
              }),

              SizedBox(height: 30,),

              com_checkbox(val: check, onchange: (value){
                setState(() {
                  check=value!;
                });
              }, nam: 'male'),

              com_checkbox(val: checkk, onchange: (value){
                setState(() {
                  checkk=value!;
                });
              }, nam: "Female"),
            ],
          ),
        ),
      ),
    );
  }
}