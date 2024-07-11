import 'package:get/get.dart';

class ApiController extends GetxController {
  var count = 0.obs;

  void incriment()
  {
    count++;
  }
  
}