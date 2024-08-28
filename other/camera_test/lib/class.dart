import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GCcontroller extends  GetxController{
  var ImagePath = "".obs;
  var ImageSize = "".obs;
  
  

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    File? _image;

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  
  void setState(Null Function() param0) {}

}