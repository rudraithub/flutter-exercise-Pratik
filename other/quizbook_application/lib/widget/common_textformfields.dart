import 'package:flutter/material.dart';
import 'package:quizbook_application/utils/contstant.dart';
class Textformfields extends StatelessWidget {
  const Textformfields({super.key, required this.keyboardType, required this.labelText, required this.hintText, required this.prefixText, required this.controller, required this.validator, required this.onTap});
  final TextInputType keyboardType;
  final String labelText,hintText,prefixText;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        controller: controller,
        validator: validator,
        onTap:onTap ,
        keyboardType: keyboardType,
        maxLength: 12,

        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:greyColor,),
          ),

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:greyColor),
          ),

          prefixText: prefixText,
          prefixStyle: TextStyle(color: blackcolor,fontWeight: FontWeight.bold,fontSize: 15),
          labelText: labelText,labelStyle: TextStyle(color: greyColor,fontSize:15),
          hintText: hintText,hintStyle: TextStyle(color: greyColor,fontSize:15),
          counterText: "",
        ),
      ),
    );
  }
}