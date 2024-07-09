import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: First_screen(),
    );
  }
}

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First-Screen"),
      ),
      body: GestureDetector(
        onTap: () async{
          var z= await (Get.to(Second_screen(),
          duration: Duration(seconds: 5),
          transition:Transition.circularReveal,
          curve:Curves.easeInOutCubicEmphasized,
          ),          
          );
          print(z);
        },
        child: Center(
          child: Container(
            color: Colors.blueGrey,
            height: 120,
            width: 120,
            child: Text("Click-to Navigate"),
          ),
        ),
      ),
    );
  }
}


class Second_screen extends StatelessWidget {
  const Second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second - Screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.offAll(First_screen(),
            duration: Duration(seconds: 5),
            transition: Transition.zoom,
            curve: Curves.decelerate,
            );
          },
          child: Center(
            child: Container(
              color: Colors.greenAccent,
              height: 120,
              width: 120,
              child: Text("second screen"),
              ),
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
      
//       home:  MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("un-NamedRouting"),),
//       body: Center(
//         child: GestureDetector(
//           onTap: () async{
//           var a =await  Get.to(()=>nextscreen(),
//             // arguments: "this is my first screen ",
            
//             duration:const Duration(seconds: 2),
//             curve: Curves.easeInOutCubic,
//             transition: Transition.upToDown);
//             print(a);
//           },
//           child: Container(
//             height: 300,
//             width: 300,
//             color: Colors.amberAccent,
//             child: const Text("This is First page"),
//           ),
//         ),
//       ),
//     );
//   }
// }


// class nextscreen extends StatelessWidget {
//   const nextscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("un-NamedRouting -2"),),
//       body: Center(
//         child: GestureDetector(
//           onTap: (){
//             Get.offAll((){});
//           },
//           child: Container(
//             height: 300,
//             width: 300,
//             color: Colors.amberAccent,
//             child: Text("secound Screen"),
//           ),
//         ),
//       ),
//       );
//   }
// }
