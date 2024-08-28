import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/controller/logincontroller.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/bottom_tabbar.dart';
import 'package:quizbook_application/views/sign_up.dart';
import 'package:quizbook_application/widget/common_textformfields.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  //formky - for validation
  final formky = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  Logincontroller logincontroller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    late double Width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: formky,
          child: Column(
              children: [
                Container(
                  height: Get.height*1,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/bg.png"),fit: BoxFit.cover,),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 90,),

                      //logo image
                      Image.asset(imagelogo,height: 80,width: 70,),

                      Container(
                        height: size.height*0.1,
                        width: size.width*0.5,
                        child: Image.asset(imagequiz_book,),
                        ),

                      SizedBox(height: 70,),
                      
                          Container(
                            // height: size.height/10,
                            width: size.width*0.95,
                            child: Textformfields(keyboardType: TextInputType.number, labelText: "Mobile Number", hintText: "Enter your mobile number", prefixText: "+91", controller: controller, validator: (value) { 
                              if (value=="") {
                                return "Please Enter  Mobile Number";
                              }
                              else if(value.length < 10){
                                return "Enter 10 digits";
                              }
                              return null;
                             }, onTap: () {  },
                             ),

                      ),
                      TextButton(onPressed: (){
                        Get.to(sign_up());
                      }, child: Text("Create New Account",style: TextStyle(color: blackcolor,decoration: TextDecoration.underline,decorationColor: blackcolor,fontSize: 18),),),

                      // SizedBox(height: 350,),
                      Spacer(),


                      Center(
                        child: Container(
                          color: Color(0xFF6c33d1),
                          margin: EdgeInsets.only(right: 5,left: 5),
                          // margin: ,
                          height: height*0.05,
                          width: Width*1,
                          child: InkWell(
                            // radius: 300,                        
                            onTap: (){
                              if (formky.currentState!.validate()) {
                                // Get.to(BottomTabBar());
                                logincontroller.loginData(controller.text);
                              //   print("success");
                              }
                            },
                            child: Center(
                              child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                              ),
                          ),
                        ),
                      ),
                      // ElevatedButton(

                      //   onPressed: (){

                      // }, child: Text("Submit")),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
              ],
            ),
          
        ),
      ),
    );
  }
}