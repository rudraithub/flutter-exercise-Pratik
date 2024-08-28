// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:quizbook_application/views/login_screen.dart';

class Signupcontroller extends GetxController{
  
  Future<void> postData(
    {
      required String fname,
      required String lname,
      required String email,
      required String dob,
      required String gender,
      required String mobile,
      required String imagepath,
      required String profession,
      required String image,
    })async {
      String url = "https://quizbook-api.rudraithub.com/users/signup";

      var request = http.MultipartRequest('POST',Uri.parse(url));
      request.fields['firstName']=fname;
      request.fields['lastName']=lname;
      request.fields['email']=email;
      request.fields['genderID']=gender;
      request.fields['DOB']=dob;
      request.fields['mobileNumber']=mobile;
      request.fields['professionId']=profession;
      // print(profession);
      if (imagepath.isNotEmpty) {
        request.files.add(await http.MultipartFile.fromPath('userProfile', imagepath,
        filename: basename(imagepath),
        ));
      }
      try{
        var streamresponse = await request.send();
        var response = await http.Response.fromStream(streamresponse);

        print(response.body);
        print(response.statusCode);

        if (response.statusCode==200) {
          print("Data submited successfully");
          Get.offAll(login_screen());
        }
        else
        {
          print("Faild to enter data : ${response.reasonPhrase}");

          final responsebody = json.decode(response.body);
          final message = responsebody['message'];

          Get.defaultDialog(
            title: "Sorry",
            content: Text(message.toString()),
            confirm: ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text("OKAY")),
          );
        }
      }
      catch(e){
        print(e);
      }
    }
} 