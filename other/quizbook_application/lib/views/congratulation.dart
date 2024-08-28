import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/homescreen.dart';

class congo_screen extends StatefulWidget {
  const congo_screen({super.key});

  @override
  State<congo_screen> createState() => _congo_screenState();
}

class _congo_screenState extends State<congo_screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Purplecolor,
          child: Column(
            children: [
              SizedBox(height: 50,),

              Image.asset(imagetrophy,height: height*0.2,),

              SizedBox(height: 50,),

              Text("Congratulation",style: TextStyle(color: whitecolor,fontSize: 40,fontWeight: FontWeight.bold),),

              SizedBox(height: 13,),

              Text("You have completed successfully",style: TextStyle(color: whitecolor,fontSize: 15,fontWeight: FontWeight.bold),),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Width*0.28,
                    height: height*0.04,
                    decoration: BoxDecoration(
                      color: greencolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("2 correct",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold),),
                      ),
                  ),

                  SizedBox(width: 5,),

                  Container(
                    width: Width*0.28,
                    height: height*0.04,
                    decoration: BoxDecoration(
                      color: redcolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("3 incorrect",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold),),
                      ),
                  ),
                ],
              ),

              SizedBox(height: 30,),

              Container(
                width: Width*0.98,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: whitecolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                  onPressed: (){
                
                }, child: Text("View the result",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: Width*0.98,
                decoration: BoxDecoration(border: Border.all(color: whitecolor),borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Purplecolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                  onPressed: (){
                    Get.to(home_screen());
                }, child: Text("Start a new quiz",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}