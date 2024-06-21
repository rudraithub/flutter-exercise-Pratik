
import 'package:flutter/material.dart';
import 'package:test_checkbox_radio_custom/com_wid.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: demmo(),
    );
  }
}
class demmo extends StatefulWidget {
  const demmo({super.key});

  @override
  State<demmo> createState() => _demmoState();
}

class _demmoState extends State<demmo> {
  String gender = '';

  bool check = false;
  bool ch = false;
  bool che = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CheckBox & Radio"),
        backgroundColor: Colors.black38,
      ),
        body: Center(
          child: Container(
            // height: 150,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                com_radio(val: 'Male', nam: 'Male', groupVal: gender, onChange: (value){
                  setState(() { 
                    gender=value!;
                  });
                }),

                SizedBox(height: 5,),

                com_radio(val: 'Female', nam: 'Female', groupVal: gender, onChange: (value){
                  setState(() {
                    gender=value!;
                  });
                }),

                SizedBox(height: 5,),

                com_radio(val: 'LGBTQ++', nam: 'LGBTQ++', groupVal: gender, onChange: (value){
                  setState(() {
                    gender=value!;
                  });
                }),

                 SizedBox(height: 15,),//checkbox

                 com_checkbox(name: "Cricket", onChange: (value){
                  setState(() {
                    check=value!;
                  });
                 }, val: check),

                 SizedBox(height: 5,),

                 com_checkbox(name: "Vollyball", onChange: (value){
                  setState(() {
                    ch=value!;
                  });
                 }, val: ch),

                  SizedBox(height: 5,),

                  com_checkbox(name: "Football", onChange: (value){
                  setState(() {
                    che=value!;
                  });
                 }, val: che),

              ],
            ),
          ),
        ),
    );
  }
}