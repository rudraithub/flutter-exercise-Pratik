import 'dart:io';


import 'package:camera_gallary_imageupload/class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  GController controller = Get.put(GController());
   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camera & Gallery"),),
      body: Padding(padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Obx(()=>controller.selectedImagePath.value==''? Text("Not Image Selected"):
            Image.file(File(controller.selectedImagePath.value))
            ),
            SizedBox(height: 20,),
            Obx(()=>controller.selectedImageSize.value==''? Text("Not Size Found"):
            Text(controller.selectedImageSize.value)
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              controller.getImage(ImageSource.camera);
            }, child: Text("Camera")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
               controller.getImage(ImageSource.gallery);
            }, child: Text("Gallery"))
          ],
        ),
      ),
      ),
    );
  }
}

