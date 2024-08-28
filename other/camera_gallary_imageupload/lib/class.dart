import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GController extends GetxController{
  var selectedImagePath=''.obs;
  var selectedImageSize=''.obs;

  Future<void> getImage(ImageSource imageSource) async{
    final pickedFile = await ImagePicker().getImage(source: imageSource);

    if(pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value = ((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+"Mb";
    }
    else{
      Get.snackbar('Error', 'Your Image is not Selected....');
    }
  }
}
