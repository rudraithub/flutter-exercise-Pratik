import 'package:flutter/material.dart';

class com_radio extends StatelessWidget {
  const com_radio({super.key, required this.val, required this.nam, required this.groupVal, required this.onChange});
  final String val,nam,groupVal;
  final ValueChanged onChange;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: RadioListTile(value: val, groupValue: groupVal, onChanged: onChange,title: Text(nam),tileColor: Colors.red,activeColor: Colors.black,),
    );
  }
}


class com_checkbox extends StatelessWidget {
  const com_checkbox({super.key, required this.name, required this.onChange, required this.val});
  final String name;
  final ValueChanged onChange;
  final bool val;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(value: val, onChanged: onChange,title: Text(name),tileColor: Colors.blueAccent,),
    );
  }
}