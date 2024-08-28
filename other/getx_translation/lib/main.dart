// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_translation/class.dart';

void main()
{
  runApp(app());
}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: demotranslation(),
      translations: Lang(),
      locale: Locale('en','US'),
    );
  }
}

class demotranslation extends StatefulWidget {
  const demotranslation({super.key});

  @override
  State<demotranslation> createState() => _demotranslationState();
}

class _demotranslationState extends State<demotranslation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRanslation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),

            Text("msg".tr,textScaleFactor: 5,),
            Text("reply".tr,textScaleFactor: 5,),

            SizedBox(height: 20,),

            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('en','US'));
            }, child: Text("Translate in English"),
            ),

            SizedBox(height: 10,),

            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('gu','IN'));
            }, child: Text("Translate in Gujarati"),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_translation/class.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       translations: Language(),
//       // fallbackLocale: Locale('en','US'),
//       locale: Locale('gu','IN'),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Translation"),),
//       body:  Center(
//         child: Column(
//           children: [
//             Text('message'.tr),
//             Text("name".tr),
//             SizedBox(height: 10,),
//             ElevatedButton(onPressed: (){
//               Get.updateLocale(Locale('en','US'));
//             }, child: Text("English")),
//                SizedBox(height: 10,),
//                ElevatedButton(onPressed: (){
//                 Get.updateLocale(Locale('gu','IN'));
//                }, child: Text("Gujarti")),
//           ],
//         ),
//       ),
//     );
//   }
// }
