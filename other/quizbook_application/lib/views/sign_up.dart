import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizbook_application/controller/signupcontroller.dart';
// import 'package:quizbook_application/models/signupmodel.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/bottom_tabbar.dart';
import 'package:intl/intl.dart';
import 'package:quizbook_application/views/camera_gallary.dart';
// import 'package:quizbook_application/views/homescreen.dart';
import 'package:quizbook_application/widget/common_textformfields.dart';
import 'package:quizbook_application/widget/dropdown.dart';

class sign_up extends StatefulWidget {
   sign_up({super.key});
  
  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  final formkey = GlobalKey<FormState>();
  GController controller = Get.put(GController());
  String select = 'Select Gender';
  String selectdesign = 'Select Designation';
  DateTime? datet;
  Signupcontroller signup = Get.put(Signupcontroller());
  TextEditingController  controller_name = TextEditingController();
  TextEditingController  controller_last = TextEditingController();
  TextEditingController  controller_eid = TextEditingController();
  TextEditingController  controller_number = TextEditingController();
  TextEditingController controller_date = TextEditingController();
  // Signupcontroller sucontroller = Get.put(Signupcontroller());
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
        actions: [
          // PopupMenuButton(itemBuilder:),
        ],
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  controller.getImage(ImageSource.gallery);
                },
                child: Obx(()=>controller.selectedImagePath.value==''?Image.asset(imageGallery,height: 90,width: 90,):CircleAvatar(radius: 45,backgroundImage: FileImage(File(controller.selectedImagePath.value),),),),
              ),
              Form(
                key: formkey,
                child: Container(
                    width: size.width*0.95,
                    child: Column(
                      children: [
                        
                        Textformfields(keyboardType: TextInputType.name, labelText: "First Name", hintText: "", prefixText: '', controller: controller_name, validator: (value) { 
                          if(value==''){
                            return "Enter first name";
                          }
                          return null;
                         }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.name, labelText: "Last Name", hintText: "", prefixText: '', controller: controller_last, validator: (value) {  
                           if(value==''){
                            return "Enter last name";
                          }
                          return null;
                        }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.emailAddress, labelText: "Email ID", hintText: "", prefixText: '', controller: controller_eid, validator: (value) { 
                           if(value==''){
                            return "Enter your email";
                          }
                          return null;
                         }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.number, labelText: "Mobile Number", hintText: "", prefixText: '', controller: controller_number, validator: (value) { 
                           if(value==''){
                            return "Enter mobile no";
                          }
                          else if(value.length < 10){
                            return "Enter 10 digits";
                          }
                          return null;
                         }, onTap: () {  },),
          
                        SizedBox(height: 10,),
        
                        Row(
                          children: [
                          // DropdownMenuEntry(value: "gender", label: "Gender")
                          // DropdownMenuItem(child: Text('male')),
                          // DropdownButtonFormField(items: [DropdownMenuItem(child:Text('male')),], onChanged:(value) => ,
                            Text("Gender",style: TextStyle(color: greyColor),),
                            SizedBox(width: 150,),
                            Text("BirthDate",style: TextStyle(color: greyColor),),
                          ],
                        ),
                        
                        Container(
                          // width: size.width*1.8,
                          // width: 200,
                          child: Row(
                            children: [
                              Container(
                                width: size.width*0.5,
                                // width: 150,
                                child: common_dropdown(a: ['Select Gender','Male','Female','Other'], selectedvalue: select, onChanged: (Value){
                                  setState(() {
                                  select=Value.toString();
                                });
                              }, formFieldValidator: (value) { 
                                if (value=='Select Gender') {
                                  return "select gender";
                                }
                                return null;
                               },),
                              ),
        
                              SizedBox(width: 5,),
        
                              Container(
                                width: size.width*0.4,
                                // alignment: Alignment.centerLeft,
                                child: Textformfields(keyboardType: TextInputType.datetime, labelText: '', hintText: "Select Date", prefixText: '', controller: controller_date, validator: (value){
                                  if (controller_date.text=='') {
                                    return "Please select Date";
                                  }
                                  return null;
                                }, onTap: () async{
                                  DateTime? dt = await showDatePicker(context: context, firstDate: DateTime(2010), lastDate: DateTime(2020));
                                          if (dt != null) {
                                            setState(() {
                                              // date = dt;
                                              controller_date.text = DateFormat('dd/MM/yyyy').format(dt);
                                            });
                                          }
                                }),
                              ),
        
                              // showDatePicker(context: context, firstDate: firstDate, lastDate: lastDate)
                            ],
                          ),
                          ),
          
                          SizedBox(height: 5,),
        
                           Container(
                            width: size.width*0.96,
                             child: common_dropdown(a: ['Select Designation','Student','Teacher','Admin'], selectedvalue: selectdesign, onChanged: (Value){
                                    setState(() {
                                    selectdesign=Value.toString();
                                  });
                                }, formFieldValidator: (value) { 
                                  if (value=='Select Designation') {
                                    return "select your designation";
                                  }
                                  return null;
                                 },),
                           ),
          
                          SizedBox(height:height*0.23,),
                          // Spacer(),
                           Container(
                              color: Color(0xFF6c33d1),
                              // height: size.height/19,
                              // width: size.width/0.90,
                              // width: size.width*4.95,
                              width: Width*1,
                              height: height*0.05,
                              child: InkWell(                        
                                onTap: (){
                                  if (formkey.currentState!.validate()) {
                                  if (controller.selectedImagePath.value.isNotEmpty) {
                                    signup.postData(fname: controller_name.text, lname: controller_last.text, email: controller_eid.text, dob: controller_date.text, gender: select == "Male" ? "1" : select == "Female" ? "2" : "3", mobile: controller_number.text, imagepath: controller.selectedImagePath.value.toString(), profession: selectdesign == "Student" ? "1" : selectdesign == "Teacher" ? "2" : "3", image: controller.selectedImagePath.value.toString());
                                  }
                                  else
                                  {
                                    Get.defaultDialog(
                                      title: "Sorry",
                                      content: Text("Please select an Image"),
                                      confirm: ElevatedButton(onPressed: (){
                                        Get.back();
                                      }, child: Text("OKAY")),
                                    );
                                  }
                                  }
                                  else
                                  {
                                    print("Form Vaidation");
                                  }
                                },
                                child: Center(
                                  child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                                  ),
                              ),
                            ),
                      ],
                    ),
                  ),
                
                ),
            ],
          ),
              ),
      ),
      
    );
  }
}