import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: dmeo(),
    );
  }
}

class dmeo extends StatefulWidget {
  const dmeo({super.key});

  @override
  State<dmeo> createState() => _dmeoState();
}

class _dmeoState extends State<dmeo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            
            //*******SNACK-BAR******
            Get.snackbar(            
              icon: Icon(Icons.safety_check),
              "Payment",
               "payment successfully"
              );
            

            //*******DIALOG-BOX******
            // Get.defaultDialog(
            //   title: "Alert",
            //   middleText: "alert msg....",
            //   textConfirm: "confirm",
            //   textCancel: "Cancel",
            // );

            //*******BOTTOM-SHEET******
            // Get.bottomSheet(
            //   Container(
            //     color: Colors.blue.shade100,
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         ListTile(
            //           leading: Icon(Icons.person_2_outlined),
            //           title: Text("Profile-Pic"),
            //         ),
            //         ListTile(
            //           leading: Icon(Icons.password_outlined),
            //           title: Text("Profile-Password"),
            //         ),
            //       ],
            //     ),
            //   )
            // );
          }, child: Text("Click-here"),),
          
        ],
      ),
    );
  }
}

// -----------------------------
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
//       home: demo(),
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
//         title: Text("Getx Widget"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               // Get.snackbar("Alert", "Your data send successfully...");
//             //   Get.defaultDialog(
//             //       title: "Alert",
//             //       middleText: "Submit data",
//             //       textConfirm: "Confirm",
//             //       textCancel: "Cancel");
//             Get.bottomSheet(
//               Container(
//                 color: Colors.blueGrey[100],
//                 // height: 200,
//                 // width: 200,
//               child: const ListTile(
//             leading: Icon(Icons.person_3_outlined),
//           title: Text("Profile"),
//               ),
//             ),
//             );
//             },
//             child: Text("Show Snackbar")),
//       ),
//     );
//   }
// }

