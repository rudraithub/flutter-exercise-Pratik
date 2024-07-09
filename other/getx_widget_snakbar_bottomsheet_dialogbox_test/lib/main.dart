import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: demo(),
    );
  }
}

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GET-X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //*****snack-bar
              // Get.snackbar(
              //   icon: Icon(Icons.timeline_outlined),
              //   "Payment", 
              //   "Payment Successfully",
              //   borderRadius: 10,
              //   // borderColor: Color.fromARGB(255, 50, 60, 21),
              //   backgroundColor: Color.fromARGB(255, 127, 245, 210),
              // );

              //*****dialogbox
              // Get.defaultDialog(
              //   title: "Do you really want to pay?",
              //   textConfirm: "Yes",
              //   textCancel: "NO",
              //   middleText: "5000/-",
              // );

              //*****bottomsheet
              Get.bottomSheet(
                Container(
                  color: Color.fromARGB(255, 158, 202, 239),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.person_2_outlined,size: 30,),
                        title: Text("PROFILE",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Icon(Icons.padding_outlined,size: 30),
                        title: Text("PASSWORD",style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        leading: Icon(Icons.adobe_outlined,size: 30),
                        title: Text("USER-ACTIVITY",style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              );
            }, child: Text("Click-Here"),
            ),
          ],
        ),
      ),
    );
  }
}