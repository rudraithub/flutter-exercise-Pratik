import 'package:flutter/material.dart';
import 'package:three_screen/com_widget.dart';
import 'package:three_screen/login.dart';
import 'package:three_screen/main.dart';

class Register_page extends StatefulWidget {
  const Register_page({super.key});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Container(
        child: Center(
        child: Container(
          width: 350,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hello! Register to get\nstarted!",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),                  
                  ],
                ),
                SizedBox(height: 40,),
                // com_wid_textfield(keytype: TextInputType.name, hinttxt: "Username", borderrad: BorderRadius.circular(5), obskert: false),

                // SizedBox(height: 10,),
                // com_wid_textfield(keytype: TextInputType.emailAddress, hinttxt: "Email", borderrad: BorderRadius.circular(5), obskert: false),

                // SizedBox(height: 10,),
                // com_wid_textfield(keytype: TextInputType.visiblePassword, hinttxt: "Password", borderrad: BorderRadius.circular(5), obskert: true),

                // SizedBox(height: 10,),
                // com_wid_textfield(keytype: TextInputType.visiblePassword, hinttxt: "Confirm password", borderrad: BorderRadius.circular(5), obskert: true),

                SizedBox(height: 20,),
                com_btn(ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>first_screen()));
                }, btnname: "Register", textcol: Colors.white, backcol:Colors.black),

                SizedBox(height: 20,),
                Text("Or Register with"),

                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imagex(newimg: "https://cdn.pixabay.com/photo/2017/11/10/05/04/facebook-2935402_960_720.png", height: 60, width: 100),
                    SizedBox(width: 15,),
                    imagex(newimg: "https://cdn.pixabay.com/photo/2016/10/23/06/04/google-1762248_1280.png", height: 60, width: 100),
                    SizedBox(width: 15,),
                    imagex(newimg: "https://cdn.pixabay.com/photo/2018/05/08/21/08/apple-3383931_1280.png", height: 60, width: 100),
                    SizedBox(width: 15,),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    com_text(onpress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>login_page()));
                    }, name: "Login Now"),
                  ],
                ),
              ],
            ),
          ),
        ),
        ),
      ),
      )
    );
  }
}