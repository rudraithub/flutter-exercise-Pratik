import 'package:flutter/material.dart';
import 'package:selfmade_button/com_btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: demoo(),
    );
  }
}

class demoo extends StatefulWidget {
  const demoo({super.key});

  @override
  State<demoo> createState() => _demooState();
}

class _demooState extends State<demoo> {
  String gender = '';
  bool chech = false;
  bool op = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Custom Button"),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Container(
          // height: 250,
          // width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btn_common(
                btn1: "Pratik",
                fontcol: Colors.black,
                splashcol: Colors.blueAccent,
                fontsiz: 20,
                hovecol: Colors.pink.shade300,
                duration: 2,

                val: 'mard',
                gv: gender,
                name: 'mard',
                oc: (value) {
                  setState(() {
                    gender = value!;
                    print(gender);
                  });
                }, nam: 'Vollyball', vall: chech, onChange: (value) {
                   setState(() {
                    chech=value!;
                }); },
              ),
              
              btn_common(
                  btn1: "Click",
                  fontcol: Colors.black,
                  splashcol: Colors.cyanAccent,
                  fontsiz: 50,
                  hovecol: Colors.deepPurple,
                  duration: 1,
                  val: "Female",
                  gv: gender,
                  name: "Female",
                    oc: (val){
                      setState(() {
                        gender=val!;
                      });
                    }, nam: 'cricket', vall: op, onChange: (value) { 
                      setState(() {
                        op=value!;
                      });
                     },
                  ),

              // SizedBox(height: 10,),
              // btn_common(btn1: "Rudri", fontcol: Colors.black, splashcol: Colors.blueAccent, fontsiz: 20, hovecol: Colors.pink.shade300, duration: 2),
              // SizedBox(height: 10,),
              // btn_common(btn1: "Dhrumil", fontcol: Colors.black, splashcol: Colors.blueAccent, fontsiz: 20, hovecol: Colors.pink.shade300, duration: 2),
            ],
          ),
        ),
      ),
    );
  }
}
