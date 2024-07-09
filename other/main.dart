import 'package:flutter/material.dart';
import 'package:widget_test_28_06/com_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
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
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              Text("Hello! Register to get",
              style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w800),),
            ),
          ],
        ),
        );
  }
}



/*Column(
            children: [
              Container(
                alignment:Alignment.topLeft,
                child:Text("Hello! Register to get",textAlign: TextAlign.left,textDirection: TextDirection.ltr,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w800),),
              ),
              Container(
                alignment: Alignment.topLeft,
               child:  Text("started",textAlign: TextAlign.left,textDirection: TextDirection.ltr,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w800,),),
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,
                //tf-username
                child: com_wid(keytype: TextInputType.name, hinttxt: "Username", borderrad: BorderRadius.circular(5), obskert: false,),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                //tf-email
                child: com_wid(keytype: TextInputType.emailAddress, hinttxt: "Email", borderrad: BorderRadius.circular(5), obskert: false,),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                //tf-password
                child: com_wid(keytype: TextInputType.visiblePassword, hinttxt: "Password", borderrad: BorderRadius.circular(5), obskert: true,),
              ),
              SizedBox(height: 10,),
              Container(
                width: 300,
                //tf-confirm-password
                child: com_wid(keytype: TextInputType.visiblePassword, hinttxt: "Confirm password", borderrad: BorderRadius.circular(5), obskert: true,),
              ),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                ),
                //register-button
                child: com_wid_button(textcol: Colors.white, btnname: "Register", fontweigt: FontWeight.bold,),
              ),
              SizedBox(height: 20),
              Container(
                //text
                child: Text("Or Register With"),
              ),
              SizedBox(height: 10,),
              Container(
                alignment:Alignment.topLeft ,
                //clipreact
                height: 120,
                width: 120,
                child: imagex(newimg: "https://cdn.pixabay.com/photo/2017/12/06/04/56/facebook-3000954_1280.png"),
              ),
            ],
          ),
        ),
      ),

      */