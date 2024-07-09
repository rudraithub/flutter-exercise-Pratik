import 'package:flutter/material.dart';
import 'package:three_screen/com_widget.dart';
// import 'package:three_screen/main.dart';
import 'package:three_screen/register.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final fk = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: fk,
          child: Container(
            width: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Welcome back! Glad \nto see you. Again!",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),                  
                    ],
                  ),
          
                  SizedBox(height: 40,),
          
                  com_wid_textfield(keytype: TextInputType.emailAddress, hinttxt: "Enter your email", borderrad: BorderRadius.circular(5), obskert: false, validator: (value) { 
                    if (value!.isEmpty) {
                      return "enter emial";
                    }
                    return null;
                   },),
          
                  SizedBox(height: 10,),
          
                  com_wid_textfield(keytype: TextInputType.visiblePassword, hinttxt: "Enter your password", borderrad: BorderRadius.circular(5), obskert: true, validator: (value) { 
                    if (value!.isEmpty) {
                      return "enter your password";
                    }
                    return null;
                   },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        // height: 200,
                        width: 300,
                        child: Text("Forgot Password?"),
                      ),
                    ],
                  ),
          
                  SizedBox(height: 50,),
          
                  com_btn(ontap: (){
                    if (fk.currentState!.validate()) {
                      print("data submitd");
                    };
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>first_screen())
                    // )
                  }, btnname: "Login", textcol: Colors.white, backcol: Colors.black),
          
                  SizedBox(height: 30,),
          
                  Text("Or login with"),
          
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      imagex(newimg: "https://cdn.pixabay.com/photo/2017/11/10/05/04/facebook-2935402_960_720.png", height: 50, width: 70,),
                      SizedBox(width: 10,),
                      imagex(newimg: "https://cdn.pixabay.com/photo/2016/10/23/06/04/google-1762248_1280.png", height: 50, width: 70),
                      SizedBox(width: 10,),
                      imagex(newimg: "https://cdn.pixabay.com/photo/2018/05/08/21/08/apple-3383931_1280.png", height: 50, width: 70),
                    ],
                  ),
                  
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      com_text(onpress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Register_page()));
                      }, name: "Register Now"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}