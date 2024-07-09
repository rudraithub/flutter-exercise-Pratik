import 'dart:math';
// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  double height=100;
  double width=100;
  Color color=Colors.blueAccent;
  BorderRadiusGeometry borderRadiusGeometry=BorderRadius.all(Radius.circular(30));
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Animation"),
    ),
    body: Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            height: height,
            width: width,
            duration: Duration(seconds: 5),
            decoration: BoxDecoration(color: color,borderRadius: borderRadiusGeometry,),
            ),
            // FloatingActionButton(
            //   onPressed: (){
            //   var random=Random();
            //   setState(() {
            //     height=random.nextInt(300).toDouble();
            //     width=random.nextInt(300).toDouble();
            //     color=Color.fromRGBO(random.nextInt(255), random.nextInt(25), random.nextInt(255), random.nextInt(10).toDouble());
            //   });
            // }, child: Icon(Icons.person_pin),),
            
            /*TweenAnimationBuilder(tween: Tween<double>(begin: 150,end: 500), 
            duration: Duration(seconds: 5),
             builder: (context,val,child){
              return Image.network("https://images.pexels.com/photos/26082377/pexels-photo-26082377/free-photo-of-alone-monkey.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: val,width: val,);
             },
             curve:Curves.bounceInOut,
             ),*/
             
            /*Container(
              height: 500,
              width: 500,
              
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: CustomPaint(
                foregroundPainter: Custpin(),
              ),
            ),*/
        ],
      ),
    ),
    );
    FloatingActionButton(
              
              onPressed: (){
              var random=Random();
              setState(() {
                height=random.nextInt(300).toDouble();
                width=random.nextInt(300).toDouble();
                color=Color.fromRGBO(random.nextInt(255), random.nextInt(25), random.nextInt(255), random.nextInt(10).toDouble());
              });
            }, child: Icon(Icons.person_pin),); 
  }
}

class Custpin extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Paint z = Paint()..strokeWidth=5..color=Colors.blue;
    canvas.drawLine(Offset(size.width*0.5/5, size.height*2/5),
                    Offset(size.width*1/4, size.height*4/5),
     z);
    final Paint y = Paint()..strokeWidth=5..color=Color.fromARGB(255, 91, 145, 4);
    canvas.drawLine(Offset(size.width*2.5/6, size.height*2/5),
                  Offset(size.width*1/4, size.height*4/5),
     y);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}