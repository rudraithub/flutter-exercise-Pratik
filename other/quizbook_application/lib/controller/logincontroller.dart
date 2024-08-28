import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quizbook_application/views/bottom_tabbar.dart';
// import 'package:quizbook_application/views/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class  Logincontroller extends GetxController {
  
Future<void> loginData(mobile) async{
  String url = "https://quizbook-api.rudraithub.com/users/login";
  Map number={
    "mobileNumber" : mobile
  };

  final response  = await http.post(Uri.parse(url),body: jsonEncode(number),
  headers: {
    "Content-Type" : "application/json",
  },
  );
  print(response.body);

  if (response.statusCode == 200) {
    final responsebody = jsonDecode(response.body);
    final token = responsebody["token"];
    SharedPreferences sp =await SharedPreferences.getInstance();
    sp.setString('token', token);
    Get.to(()=>BottomTabBar());
    print("Login successfully");
  }
  else
  {
    final responsebody = jsonDecode(response.body);
    final message = responsebody['message'];
    Get.defaultDialog(
      title: "Sorry",
      content: Text(message),
      confirm: ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text("OKAY")),
    );
    print("Bad Request,${response.statusCode}");
  }
}
}