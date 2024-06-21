import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: demoform(),
    );
  }
}

class demoform extends StatefulWidget {
  const demoform({super.key});
  

  @override
  State<demoform> createState() => _demoformState();
}

class _demoformState extends State<demoform> {
  final fkey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo.shade100,
        title: Text("TextForm"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Form(
            key: fkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              SizedBox(height: 20,),
          
              //email textform-field
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return("Enter Email...");
                  }
                  return null;
                },
          
                //textform-field properties
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter E-mail",
                  prefixIcon: Icon(Icons.email_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blueAccent.shade700,width: 3),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 157, 3),width: 3),
                  ),
                ),
              ),
          
              SizedBox(height: 20,),
          
              //password textform field
              TextFormField(
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return("Enter Password...");
                  }
                  return null;
                },
                //textform-field properties
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  prefixIcon: Icon(Icons.pages_sharp),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blueAccent.shade700,width: 3),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Color.fromARGB(255, 57, 127, 1),width: 3),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          
              //button
              ElevatedButton(onPressed: (){
                if (fkey.currentState!.validate()) {
                  print("Data submited successfully...");
                }
              }, child: Text("Login")),
            ],
          ),
          ),
        ),
      ),
    );
  }
}