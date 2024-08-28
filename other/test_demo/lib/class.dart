

import 'package:get/get.dart';

class apicotro extends GetxController {
  var count = 0;

  void incere(){
    count++;
    update();
  }

  var c = 0.obs;

  void decre()
  {
    c++;
    update();

    ever(c, (a)=>print("Ever"));
    everAll([c], (b)=>print("EverAll"));
    debounce(c, (u)=>print("debounce"),time: Duration(seconds: 3));
  }
}