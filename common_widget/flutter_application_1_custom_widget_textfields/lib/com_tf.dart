// ignore_for_file: file_names

import 'package:flutter/material.dart';

class txtFeild extends StatelessWidget {
  const txtFeild(
      {super.key,
      required this.keyboardEvent,
      required this.iconData,
      required this.hText,
       required this.labelText,
        required this.controller, 
         this.obscureText= false});
    final TextInputType keyboardEvent;
    final IconData iconData;
    final String hText,labelText;
    final TextEditingController controller;
    final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardEvent,
      decoration: InputDecoration(
         prefixIcon: Icon(iconData),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 69, 36, 176),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusColor: Colors.amber,
          labelText: labelText,
          helperText: hText,
          hoverColor: Color.fromARGB(255, 86, 182, 14)),
    );
  }
}
