import 'package:flutter/material.dart';
import 'package:inkwell_test/second_page.dart';

class img_inkwell extends StatelessWidget {
  const img_inkwell({super.key, required this.img, required this.hei, required this.wid});
  final String img;
  final double hei,wid;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sec_page()));
              },
              child: Center(
                child: Image.network(img,height: hei,width: wid,fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}