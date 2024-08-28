import 'package:flutter/material.dart';
// import 'package:quizbook_application/utils/contstant.dart';


class common_dropdown extends StatelessWidget {
  const common_dropdown({super.key, required this.a, required this.selectedvalue, required this.onChanged, required this.formFieldValidator});
  final List a;
  final String selectedvalue;
  final ValueChanged onChanged;
  final FormFieldValidator formFieldValidator;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedvalue,style: TextStyle(color: Colors.grey,fontSize:15),
      items:a.map((e)=>DropdownMenuItem(value: e,child: Text(e))).toList() , 
      onChanged: onChanged,
      elevation: 15,
      borderRadius: BorderRadius.circular(10),
      isExpanded: true,
      validator: formFieldValidator,
      
      );
  }
}