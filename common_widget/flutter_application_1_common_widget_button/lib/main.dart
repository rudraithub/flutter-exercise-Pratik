 import 'package:flutter/material.dart';
import 'package:flutter_application_1_common_widget_button/commont_btn.dart';

void main()
 {
  runApp(myapp());
 }

 class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: btndemo(),
    );
  }
}

class btndemo extends StatefulWidget {
  const btndemo({super.key});

  @override
  State<btndemo> createState() => _btndemoState();
}

class _btndemoState extends State<btndemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 54, 97),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 197, 221, 101),
        foregroundColor: Color.fromARGB(255, 1, 1, 44),
        title: Text("Common Button Widget..."),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btn(txtname: 'cutie', txtcol: Colors.white, bgcol: Color.fromARGB(255, 212, 32, 44), tiger: (){}),
            SizedBox(height: 50,),
            btn(txtname: 'ugly', txtcol: Colors.white, bgcol: Color.fromARGB(255, 212, 32, 44), tiger: (){}),
            SizedBox(height: 50,),
            btn(txtname: 'beautiful', txtcol: Colors.white, bgcol: Color.fromARGB(255, 212, 32, 44), tiger: (){}),
          ],
        ),
      ),
    );
  }
}