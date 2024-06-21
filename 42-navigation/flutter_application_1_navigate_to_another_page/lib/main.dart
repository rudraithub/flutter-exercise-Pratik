// import 'package:flutter/material.dart';
// import 'package:flutter_application_1_navigate_to_another_page/second.dart';

// void main()
// {
//   runApp(myapp());
// }

// class myapp extends StatelessWidget {
//   const myapp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:demo(),
//     );
//   }
// }

// class demo extends StatefulWidget {
//   const demo({super.key});

//   @override
//   State<demo> createState() => _demoState();
// }

// class _demoState extends State<demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("First Page..."),
//       ),
//       body: Center(
//         child: Container(
//           child: ElevatedButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>tiger()));
//           }, child: Text("Click Here to redirect in Second Page")),
//       ),),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_application_1_navigate_to_another_page/second.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demonavi(),
    );
  }
}

class demonavi extends StatefulWidget {
  const demonavi({super.key});

  @override
  State<demonavi> createState() => _demonaviState();
}

class _demonaviState extends State<demonavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PAge 1"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>navigatepage()));
        }, child: Text("Press here")),
      ),
    );
  }
}