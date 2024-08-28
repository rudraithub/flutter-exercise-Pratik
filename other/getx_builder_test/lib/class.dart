import 'package:get/get.dart';

class apicontro extends GetxController{
  var count = 0.obs;

  void incre()
  {
    count++;
    update(['123']);

    ever(count, (x)=>print("I'm Ever"));
    everAll([count], (y)=>print("I'm EverAll"));
    once(count, (z)=>print("I'm Onces"));
    debounce(count, (g)=>print("I'm Debounce"),time: Duration(seconds: 3));
  }
  /*
  void decre(){
    var cont = 0.obs;
    cont++;

    @override
     onInit(){
      print("onInint");
    }

    ever(cont, (x)=>print("I'm Ever"));
    everAll([cont], (y)=>print("I'm EverAll"));
    once(cont, (z)=>print("I'm Onces"));
    debounce(cont, (g)=>print("I'm Debounce"),time: Duration(seconds: 3));
  }*/
   
}