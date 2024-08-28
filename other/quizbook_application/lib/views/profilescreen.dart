import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/camera_gallary.dart';
import 'package:quizbook_application/widget/common_textformfields.dart';
import 'package:quizbook_application/widget/dropdown.dart';

class profile_screen extends StatefulWidget {
   profile_screen({super.key});
  
  @override
  State<profile_screen> createState() => _profile_screen();
}

class _profile_screen extends State<profile_screen> {
  final formkey = GlobalKey<FormState>();
  GController controller = Get.put(GController());
  String select = 'Select Gender';
  String selectdesign = 'Select Designation';
  DateTime? datet;
  TextEditingController  controller_name = TextEditingController();
  TextEditingController  controller_last = TextEditingController();
  TextEditingController  controller_eid = TextEditingController();
  TextEditingController  controller_number = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Update Profile",style: TextStyle(fontWeight: FontWeight.bold,color: blackcolor),),
        elevation: 5,
        centerTitle: true,
        shadowColor: greyColor,
      ),
      body:  Center(
        child: SingleChildScrollView(
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
                          return null;
                          }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.name, labelText: "Last Name", hintText: "", prefixText: '', controller: controller_last, validator: (value) {
                          return null;
                          }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.emailAddress, labelText: "Email ID", hintText: "", prefixText: '', controller: controller_eid, validator: (value) {
                          return null;
                          }, onTap: () {  },),
          
                        Textformfields(keyboardType: TextInputType.number, labelText: "Mobile Number", hintText: "", prefixText: '', controller: controller_number, validator: (value) {
                          return null;
                          }, onTap: () {  },),
          
                        SizedBox(height: 10,),
          
                        Row(
                          children: [
                          // DropdownMenuEntry(value: "gender", label: "Gender")
                          // DropdownMenuItem(child: Text('male')),
                          // DropdownButtonFormField(items: [DropdownMenuItem(child:Text('male')),], onChanged:(value) => ,
                            Text("Gender",style: TextStyle(color: greyColor,fontSize:15),),
                            SizedBox(width: 150,),
                            Text("BirthDate",style: TextStyle(color: greyColor,fontSize:15),),
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
                              }, formFieldValidator: (value) {  },),
                              ),
          
                              SizedBox(width: 5,),
          
                              Container(
                                width: size.width*0.4,
                                // alignment: Alignment.centerLeft,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    shape: LinearBorder.bottom(side: BorderSide(color: greyColor),),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  onPressed: () async{
                                 DateTime? dateTime = await showDatePicker(context: context, firstDate: DateTime(2004), lastDate: DateTime(2024));
                                 setState(() {
                                   datet=dateTime;
                                 });
                                }, child: datet==null ? Text("Select Date",style: TextStyle(color: greyColor,fontSize: 15,fontWeight: FontWeight.w400)):Text("${datet!.day}/${datet!.month}/${datet!.year}",style: TextStyle(color: greyColor,fontSize: 15,fontWeight: FontWeight.w400),)),
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
                                }, formFieldValidator: (value) {  },),
                           ),
          
                          SizedBox(height:height*0.20,),
                           Container(
                              color: Color(0xFF6c33d1),
                              width: Width*1,
                              height: height*0.05,
                              child: InkWell(                        
                                onTap: (){
                              
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