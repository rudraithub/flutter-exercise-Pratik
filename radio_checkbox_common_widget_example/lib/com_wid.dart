import 'package:flutter/material.dart';

//radio common widget

class com_radio extends StatelessWidget {
  const com_radio(
      {super.key,
      required this.val,
      required this.groupval,
      required this.nam,
      required this.onchange});
  final String val, groupval, nam;
  final ValueChanged onchange;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RadioListTile(
        value: val,
        groupValue: groupval,
        onChanged: onchange,
        title: Text(nam),
        // hoverColor: Colors.black,
        // splashRadius: 20,
        // activeColor: Colors.amber,
        // mouseCursor: MouseCursor.uncontrolled,
        // tileColor: Colors.black,
        // activeColor: Colors.amberAccent,
      ),
    );
  }
}

//checkbox common widget

class com_checkbox extends StatelessWidget {
  const com_checkbox(
      {super.key,
      required this.val,
      required this.onchange,
      required this.nam});
  final bool val;
  final ValueChanged onchange;
  final String nam;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        value: val,
        onChanged: onchange,
        title: Text(nam),
        // tileColor: const Color.fromARGB(255, 235, 159, 136),
        // checkColor: Colors.pink,
      ),
    );
  }
}
