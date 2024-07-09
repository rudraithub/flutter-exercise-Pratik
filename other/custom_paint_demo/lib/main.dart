// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(Dopinder());
// }

// class Dopinder extends StatelessWidget {
//   const Dopinder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Demo(),
//     );
//   }
// }

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State<Demo> createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Custom Paint"),
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//           child: CustomPaint(
//             foregroundPainter: CustPaint(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustPaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..strokeWidth = 10
//       ..color = Colors.blue;

//     canvas.drawLine(
//       Offset(size.width * 1 / 3, size.height * 1 / 3),
//       Offset(size.width * 2 / 3, size.height * 2 / 3),
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }













import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(dopinder());
}
class dopinder extends StatelessWidget {
  const dopinder({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom-Paint"),
      ),
      body: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: CustomPaint(
          // size:const Size(100, 100),
          foregroundPainter: Custpaint(),
        ),
      ),
    );
  }
}

class Custpaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Paint x = Paint()..strokeWidth=10;
    canvas.drawLine(Offset(size.width*1/6,size.height*1/5,),
    Offset(size.width*5/6,size.height*1/2), x);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}