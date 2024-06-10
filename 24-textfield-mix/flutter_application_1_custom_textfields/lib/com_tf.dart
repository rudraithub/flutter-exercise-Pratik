import 'package:flutter/material.dart';

class common_textfield extends StatelessWidget {
  const common_textfield({super.key, required this.tfkt, required this.tfht, required this.tfhelpt, required this.tflt, required this.tfbscol, required this.tfebcol, required this.tfpricon});
  final TextInputType tfkt;
  final String tfht,tfhelpt,tflt;
  final Color tfbscol,tfebcol;
  final IconData tfpricon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        keyboardType: tfkt,
        decoration: InputDecoration(
          hintText: tfht,
          helperText: tfhelpt,
          labelText: tflt,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: tfbscol,width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: tfebcol,width: 2),
          ),
          prefixIcon: Icon(tfpricon),
        ),
      ),
    );
  }
}