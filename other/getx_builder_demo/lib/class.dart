import 'package:get/get.dart';

class apicontrol extends GetxController {
  var count = 0.obs;
  
  void incre()
  {
    count++;
    update();

    ever(count, (a)=>print("i m ever"));
    everAll([count], (r)=>print("i m all"));
    once(count, (p)=>print("im once"));
    debounce(count, (val)=>print("im debounce"),time: Duration(seconds: 4));
  }
}





// import 'package:get/get.dart';

// class Apicontroller extends GetxController {
//   var count = 0;
//   void Increment()
//   {
//     count++;
//     update(['123']);
    
//     // @override
//     // onInit(){
//     //   print("I am Call");
//     //   super.onInit();
//     // }
//     // // @override
//     // onClose(){
//     //   print("Close App");
//     //   super.onClose();
//     // }
//     // ever(count , (v)=>print("call"));
//     // everAll([count], (callback)=>print("gg"));
//     // once(count, (a)=>print("once"));
//     //  debounce(
//     //  count,
//     //  (value) {
//     //    print(value);
   
//     //  },
//     //  time: 2.seconds,
//   //  );
//  }

//   }

