import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

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
  double height =100;
  double width =100;
  Color color = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Column(
        children: [

          //*******TWEEN-ANIMATION*******
          /*TweenAnimationBuilder(
            tween: Tween<double>(begin: 30,end: 50),
            duration: Duration(seconds: 4),
            builder: (context,val,child){
              return Text("Animation is here",style:TextStyle(fontSize: val),);
            },
            curve: Easing.legacy,
            ),*/

          //*******ANIMATION*******
          /*AnimatedContainer(
            duration: Duration(seconds: 3),
            height: height,
            width: width,
            decoration: BoxDecoration(color: color),
          ),
          FloatingActionButton(onPressed: (){
            var random = Random();
            setState(() {
               height=random.nextInt(200).toDouble();
            width=random.nextInt(200).toDouble();
            color=Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(3).toDouble());
            });
           
          },child: Icon(Icons.accessibility_new_outlined),)*/
        ],
      ),
    );
  }
}

// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const demo(),
//     );
//   }
// }

// class demo extends StatefulWidget {
//   const demo({super.key});

//   @override
//   State<demo> createState() => _demoState();
// }

// class _demoState extends State<demo> {
//   double height = 100;
//   double width = 100;
//   Color color = Color.fromARGB(255, 0, 140, 9);
//   BorderRadiusGeometry borderRadiusGeometry = BorderRadius.circular(10);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("ANimation container & Tween Animation"),
//         ),
//         body: Column(
//         children: [
//           Center(
//               child: AnimatedContainer(
//             duration: Duration(seconds: 10),
//             height: height,
//             width: width,
           
//             decoration: BoxDecoration( color: color,borderRadius: borderRadiusGeometry),
//           )),
//           FloatingActionButton(
//             onPressed: () {
//               var random = Random();
//               setState(() {
//                 height = random.nextInt(400).toDouble();
//                 // height = random.nextInt(300).toDouble();
//                 width = random.nextInt(300).toDouble();
//                 color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255),random.nextInt(3).toDouble());
//                 // color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
//                 // random.nextInt(255), random.nextInt(10).toDouble());
           
//               });
//             },
//             child: Icon(Icons.refresh),
//           ),
//           SizedBox(height: 20,),
        
//         ],
//       ),
//       );
//   }
// }


// //  



// // ----------------------------------------------------------------
// /*Center(
//           child: TweenAnimationBuilder(
//             tween: Tween<double>(begin: 10, end: 30),
//             duration: Duration(seconds: 5),
//             builder: (context, value, child) {
//               return Text(
//                 "I AM ANIMATION",
//                 style: TextStyle(fontSize: value),
//               );
//             },
//             curve: Curves.bounceInOut,
//           ),*/