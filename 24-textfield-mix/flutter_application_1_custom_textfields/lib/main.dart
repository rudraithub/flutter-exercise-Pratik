import 'package:flutter/material.dart';
import 'package:flutter_application_1_custom_textfields/com_tf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dmo(),
    );
  }
}

class dmo extends StatefulWidget {
  const dmo({super.key});

  @override
  State<dmo> createState() => _dmoState();
}

class _dmoState extends State<dmo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text("This is TextField..."),
      ),
      body: Center(
        child: Container(
          // height: 150,
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            common_textfield(tfkt: TextInputType.emailAddress, tfht: "E-mail", tfhelpt: "Email or UserName", tflt: "Enter Email", tfbscol: Colors.blueAccent, tfebcol: Colors.black, tfpricon: Icons.email_outlined,),
            SizedBox(height: 20,),
            common_textfield(tfkt: TextInputType.datetime, tfht: "Date", tfhelpt: "Date or Time", tflt: "Enter Date", tfbscol: Colors.blueAccent, tfebcol: Colors.black, tfpricon:Icons.date_range_outlined ),
          ],
          ),
        ),
      ),
    );
  }
}

