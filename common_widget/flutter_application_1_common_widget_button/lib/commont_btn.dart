import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  const btn({super.key, required this.txtname, required this.txtcol, required this.bgcol, required this.tiger});
   //variables
  final String txtname;
  final Color txtcol;
  final Color bgcol;
  final VoidCallback tiger;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
        tiger();
      }, child: Text(txtname,style: TextStyle(color: txtcol),),
      style: ElevatedButton.styleFrom(backgroundColor: bgcol),
      ),
    );
  }
}