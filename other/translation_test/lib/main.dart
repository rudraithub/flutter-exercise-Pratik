import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_test/class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: translationdemo(),
      translations: langua(),
      locale: Locale('gu','IN'),
    );
  }
}

class translationdemo extends StatefulWidget {
  const translationdemo({super.key});

  @override
  State<translationdemo> createState() => _translationdemoState();
}

class _translationdemoState extends State<translationdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TRanSlation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("name".tr,textScaleFactor: 3,),
            Text("city".tr,textScaleFactor: 3,),

            SizedBox(height: 20,),

            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('en','US'));
            }, child: Text("Click To English")),
  SizedBox(height: 20,),
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('sp','SP'));
            }, child: Text("Click To Spanish")),
  SizedBox(height: 20,),
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('hi','IN'));
            }, child: Text("Click To Hindi")),
          ],
        ),
      ),
    );
  }
}