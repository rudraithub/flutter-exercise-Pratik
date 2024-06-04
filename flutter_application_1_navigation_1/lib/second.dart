import 'package:flutter/material.dart';

class sec_page extends StatelessWidget {
  const sec_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secound Page"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Previous Page",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
        ),
      ),
    );
  }
}