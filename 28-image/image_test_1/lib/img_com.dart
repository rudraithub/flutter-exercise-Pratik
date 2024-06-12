import 'package:flutter/material.dart';

class img extends StatelessWidget {
  const img({super.key, required this.bacimg});
  final String bacimg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 120,
              child: CircleAvatar(
                backgroundImage: NetworkImage(bacimg),
                radius: 115,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class clipimg extends StatelessWidget {
  const clipimg({super.key, required this.cliimg, required this.h, required this.w});
  final String cliimg;
  final double h,w;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(cliimg,height: h,width: w,fit: BoxFit.cover,),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40),),
            ),
          ],
        ),
      ),
    );
  }
}