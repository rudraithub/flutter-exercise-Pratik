import 'package:flutter/material.dart';

class com_img extends StatelessWidget {
  const com_img({super.key, required this.img, required this.h, required this.w,});
  final String img;
  final double h,w;
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20),topRight: Radius.elliptical(20,20)),
              child: Image.network(img,height: h,width: w,fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}

class img_ccomm extends StatelessWidget {
  const img_ccomm({super.key, required this.imgnet,});
  final String imgnet;

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
                backgroundImage: NetworkImage(imgnet),
                radius: 118,
              ),
            ),
          ],
        ),
      ),
    );
  }
}