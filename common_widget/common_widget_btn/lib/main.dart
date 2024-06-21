import 'package:common_widget_btn/commonbtn.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    myapp()
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Custom Button"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             com_btn(tname: "LION", tcol: Color.fromARGB(255, 249, 249, 249), callback: (){}, fweight: FontWeight.w900, shadowcol: Color.fromARGB(255, 0, 118, 61), backcol: Color.fromARGB(221, 95, 98, 188)),
             SizedBox(height: 40,),
             com_btn(tname: "TIGER", tcol: const Color.fromARGB(115, 255, 255, 255), callback: (){}, fweight: FontWeight.bold, shadowcol: Color.fromARGB(255, 11, 145, 103), backcol: Color.fromRGBO(106, 85, 222, 1)),
             SizedBox(height: 40,),
             com_op(fabname: "Sparrow", fabcol: Color.fromARGB(240, 242, 0, 0), valret: (){}),
             SizedBox(height: 40,),
             demo_common(obname: "Bagira", obcol: Colors.black, obbgcol: Color.fromARGB(255, 68, 185, 152), praitk: (){}),
             SizedBox(height: 40,),
            //  action_common(abtname: "wolf", abbgcol: Colors.black38, abcol: Colors.white, actionbtn: (){}),
            action_common(ibbgcol: Color.fromARGB(255, 167, 29, 29), ibforcol: Colors.blue, iconnbtn: (){}),
      ],
        ),
      ),
    );
  }
}