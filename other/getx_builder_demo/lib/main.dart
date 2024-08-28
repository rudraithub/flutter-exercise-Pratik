import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_builder_demo/class.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: getxbuilder(),
    );
  }
}

class getxbuilder extends StatefulWidget {
  const getxbuilder({super.key});

  @override
  State<getxbuilder> createState() => _getxbuilderState();
}

class _getxbuilderState extends State<getxbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GETX-BUILDER"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<apicontrol>(
              init: apicontrol(),
              // id: "123",
              builder: (z)=>Text("${z.count}"),
              ),

              OutlinedButton(onPressed: (){
                var obj = Get.find<apicontrol>();
                obj.incre();
              }, child: Text("Press-here")),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_builder_demo/class.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Demo(),
//     );
//   }
// }

// class Demo extends StatelessWidget {
//   const Demo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text("Getx Builder"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             GetBuilder<Apicontroller>(
//               id: '123',
//               init: Apicontroller(),
//               builder: (myapi) => Text(myapi.count.toString()),
//             ),
//             GetBuilder<Apicontroller>(
//               init: Apicontroller(),
//               builder: (myapi) => Text(myapi.count.toString()),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   var a = Get.find<Apicontroller>();
//                   a.Increment();
//                 },
//                 child:const Text("Increment"))
//           ],
//         ),
//       ),
//     );
//   }
// }

