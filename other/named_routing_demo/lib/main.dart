import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:named_routing/first.dart';
// import 'package:named_routing/secound.dart';
// import 'package:named_routing/unknownPage.dart';
import 'package:named_routing_demo/second.dart';
import 'package:named_routing_demo/unknown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/first",
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(name: '/first', page: ()=> MyHomePage()),
        GetPage(name: '/secound', page: ()=> secound()),
      ],
      unknownRoute: GetPage(name: '/unknown', page: ()=> Unknownpage()),
      // home: MyHomePage(),
    );
  }
}

class  MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Routing & State Management"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.toNamed('/secound?a=1&b=2');
        }, child: Text("First Page")),
      ),
    );
  }
}



//**********************************state management demo */
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';
// import 'package:get/state_manager.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //RxInt _counter = 0.obs;
//   var counter = 10.obs;

  

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
//         title: Text(widget.title),
//       ),
//       body: Center(
       
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//            Obx(()=>Text(
//               '$counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             )),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           counter++;
//         },
          
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }

