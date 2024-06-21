import 'package:flutter/material.dart';

class sec_page extends StatelessWidget {
  const sec_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Click Button To Navigate in First-Page",style: TextStyle(color: Colors.black,fontSize: 30,decoration: TextDecoration.none),),
        SizedBox(height: 10,),
        Icon(Icons.arrow_circle_down_rounded,size: 60,),
        SizedBox(height: 10,),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, 
        style: TextButton.styleFrom(foregroundColor: Colors.cyanAccent,backgroundColor: const Color.fromARGB(253, 0, 0, 0),),
        child: Text("Hey",style: TextStyle(fontSize: 30),)),
        
      ],
    );
  }
}