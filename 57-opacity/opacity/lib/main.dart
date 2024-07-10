import 'package:flutter/material.dart';
import 'package:hero_animation/next_screen.dart';

void main()
{
  runApp(myap());
}

class myap extends StatelessWidget {
  const myap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: Text("wrap & hero animation and opacity"),
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    color: Color.fromARGB(253, 241, 4, 4),
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  color: Colors.black45,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.black87,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.blue,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.green,
                  height: 150,
                  width: 150,
                ),
                Container(
                  color: Colors.amber,
                  height: 150,
                  width: 150,
                ),
              ],
            ),

            /*InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Nextscreen()));
              },
              child: Hero(tag: "dopinder", child: Image.network("https://images.pexels.com/photos/26700261/pexels-photo-26700261/free-photo-of-a-black-bird-flying-over-a-snowy-field.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 200,width: 120,),),
            ),*/

          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// // import 'package:hero_animation/next_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const MyHomePage(),
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
//       appBar: AppBar(title: Text("Hero_Wrap And Opacity"),),
//       body: 
      
//       /*InkWell(onTap: (){
//         Navigator.push(context, MaterialPageRoute(builder: (context)=> Nextscreen()));
//       },
//       child: Hero(tag: 'backgroud',transitionOnUserGestures: true, child: Image.network("https://images.pexels.com/photos/1480691/pexels-photo-1480691.jpeg?auto=compress&cs=tinysrgb&w=600",height: 200,width: double.infinity,))),*/

//       Wrap(
//         spacing: 11,
//         runSpacing: 11,
//         alignment: WrapAlignment.spaceAround,
//         children: [
//           Opacity(
//             opacity: 0.1,
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.amber,
//             ),
//           ),
//            Container(
//             height: 100,
//             width: 100,
//             color: const Color.fromARGB(255, 255, 81, 7),
//           ),
//            Container(
//             height: 100,
//             width: 100,
//             color: Color.fromARGB(255, 19, 105, 67),
//           ),
//            Container(
//             height: 100,
//             width: 100,
//             color: Color.fromARGB(255, 29, 71, 177),
//           ),
//            Container(
//             height: 100,
//             width: 100,
//             color: Color.fromARGB(255, 133, 3, 147),
//           ),
//            Container(
//             height: 100,
//             width: 100,
//             color: Color.fromARGB(255, 157, 14, 30),
//           ),
//         ],
//       ),
//     );
//   }
// } 
