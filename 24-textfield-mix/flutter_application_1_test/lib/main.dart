import 'package:flutter/material.dart';
import 'package:flutter_application_1_test/com_tf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demmmo(),
    );
  }
}

class demmmo extends StatefulWidget {
  const demmmo({super.key});

  @override
  State<demmmo> createState() => _demmmoState();
}

class _demmmoState extends State<demmmo> {
  final TextEditingController x = TextEditingController();
  final TextEditingController y=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 158, 244, 208),
        title: Text("TextField..."),
      ),
      body: Center(
        child: Container(
          // height: 120,
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             textfield_commom(obscrt: false, ht: "Email", lt: "Email or UserName", contrl: x, kbt: TextInputType.emailAddress, pfi: Icons.email_outlined,),
             SizedBox(height: 20,),
             textfield_commom(obscrt: true, ht: "Password", lt: "Enter Password", contrl: y, kbt: TextInputType.visiblePassword, pfi: Icons.password_rounded),
             SizedBox(height: 20,),
             TextButton(
              style:TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 238, 167, 145),foregroundColor: Colors.black),
              onPressed: (){
                print("username:${x.text.toString()}");
                print("password:${y.text.toString()}");
              },
             child: Text("Click Here",style: TextStyle(fontSize: 18,)
             ),
             ),
            ],
          ),  
        ),
      ),
    );
  }
}