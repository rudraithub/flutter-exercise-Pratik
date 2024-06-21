import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  const icon({super.key, required this.ico, required this.size, required this.icol});
  final IconData ico;
  final double size;
  final Color icol;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(ico,size: size,color: icol,shadows: [Shadow(color: Color.fromARGB(255, 1, 148, 40),blurRadius:60.32,)],),
    );
  }
}