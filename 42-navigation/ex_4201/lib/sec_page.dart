import 'package:flutter/material.dart';

class sec_page extends StatelessWidget {
  const sec_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("Second Page"),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 27, 12, 73),
      ),
      body: Center(
        child: Container(
          child:  ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
           child: Text("Previous Page",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
           style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 11, 7, 55),
            foregroundColor: Colors.white,
           ),
           
           ),
        ),
      ),
      ),
    );
  }
}