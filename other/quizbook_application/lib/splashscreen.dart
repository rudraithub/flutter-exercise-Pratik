import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:quizbook_application/utils/contstant.dart';
// import 'package:quizbook_application/views/bottom_tabbar.dart';
// import 'package:quizbook_application/views/chapter.dart';
// import 'package:quizbook_application/views/congratulation.dart';
import 'package:quizbook_application/views/login_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login_screen())));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(imagelogo),
    );
  }
}