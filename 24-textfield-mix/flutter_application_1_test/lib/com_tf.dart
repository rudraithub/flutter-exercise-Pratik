import 'package:flutter/material.dart';

class textfield_commom extends StatelessWidget {
  const textfield_commom({super.key, required this.obscrt, required this.ht, required this.lt, required this.contrl, required this.kbt, required this.pfi});
  final bool obscrt;
  final String ht,lt;
  final TextEditingController contrl;
  final TextInputType kbt;
  final IconData pfi;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextField(
            obscureText: obscrt,
            controller: contrl,
            keyboardType: kbt,
            decoration: InputDecoration(
              hintText: ht,
              labelText: lt,
              prefixIcon: Icon(pfi),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.lightBlueAccent,width: 3),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black,width: 3),
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}