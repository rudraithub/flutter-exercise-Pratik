import 'package:flutter/material.dart';

class float_btn extends StatelessWidget {
  const float_btn({super.key, required this.tiger, required this.fabname, required this.fabcol, required this.fabbgcol, required this.fabweight, required this.bgcol});
  final VoidCallback tiger;
  final String fabname;
  final Color fabcol,fabbgcol,bgcol;
  final FontWeight fabweight;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(onPressed: (){
        tiger();
      },
      child: Text(fabname,style: TextStyle(color: fabcol,fontWeight: fabweight,backgroundColor:fabbgcol),),
      backgroundColor: bgcol,splashColor: Colors.amberAccent,
      ),
    );
  }
}