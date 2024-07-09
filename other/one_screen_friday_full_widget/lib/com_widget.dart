import 'package:flutter/material.dart';

class com_textf extends StatelessWidget {
  const com_textf({super.key, required this.kt, required this.lablet,});
  final TextInputType kt;
  final String lablet;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(
            keyboardType: kt,
            decoration: InputDecoration(
              // suffix: Icon(Icons.remove_red_eye_outlined,color: Colors.blue.shade900,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              
              labelText: lablet,
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            ),
        ],
      ),
    );
  }
}