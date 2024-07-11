import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_reactive_statement/class.dart';


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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
  //  ApiController abc = Get.put(ApiController());
    return Scaffold(
      appBar: AppBar(title: Text("Getx Reactive State Management"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<ApiController>(
              init: ApiController(),
              builder: (z)=>Text("${z.count}"),
              ),

              TextButton(onPressed: (){
                var obj = Get.find<ApiController>();
                obj.incriment();
              }, child: Text("Click"),),
            /*GetX<ApiController>(
              init: ApiController(),
              builder: (mycontroller)=> Text("${mycontroller.count}")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
             var obj= Get.find<ApiController>();
             obj.incriment();
            //  print(obj.count);
            }, child: Text("Counter Press"),
            ),*/
          ],
        ),
      ),
    );
  }
}
