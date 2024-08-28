import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:put_lazyput_demo/class.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home : demo()
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

    var api = Get.put(apiController(),tag: '1');
    var api2 = Get.create(()=>apiController());
    var api3 = Get.lazyPut(()=>apiController());
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dependany injection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: (){
              var obj = Get.find<apiController>();
              print(obj.hashCode);
              print(api.hashCode);
              // print(api2.);
              // print(api3.);
            }, child: Text("Click")),

            Row(
              children: [
                Container(
                  color: Colors.amber.shade100,
                  height: size.height/2,
                  width: size.width/4,
                ),
                Container(
              color: Colors.amber.shade200,
              height: size.height/2,
              width: size.width/4,
            ),
            Container(
              color: Colors.amber.shade300,
              height: size.height/2,
              width: size.width/4,
            ),
            Container(
              color: Colors.amber.shade400,
              height: size.height/2,
              width: size.width/4,
            ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // ignore: depend_on_referenced_packages
// // import 'package:getx_depanpancies/controllerApi.dart';
// import 'package:put_lazyput_demo/class.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

 
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
    
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var api = Get.put(apiController(),tag: '1');
//     // var api2 = Get.create(()=>apiController());
    
//     var api2 = Get.put(apiController());
//     // var size = MediaQuery.of(context).size;
//     // var height = size.height;
//     // var width = size.width;
//     // final height = MediaQuery.of(context);
//     return Scaffold(
//       appBar: AppBar(title: Text('App '),),
//       body: 
//          Center(
//            child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             //   Container(
//             //     height: Get.height / 1.2,
//             //     width: Get.width * .85,
//             //     color: Colors.amberAccent,
//             //   )

//             Text("Hello"),
//             SizedBox(height: 10,),
//             ElevatedButton(onPressed: (){
//               var o= Get.find<apiController>();
                    
//               print(o.hashCode);
//               print(api.hashCode);
                   
//             }, child: Text("Increment"))

//             ],
//           ),
//          ),
      
//     );
//   }
// }
