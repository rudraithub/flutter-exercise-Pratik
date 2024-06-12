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
      home: demmo(),
    );
  }
}

class demmo extends StatefulWidget {
  const demmo({super.key});

  @override
  State<demmo> createState() => _demmoState();
}

class _demmoState extends State<demmo> {
  final formk = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextFormFields..."),
        backgroundColor: Color.fromARGB(255, 226, 165, 103),
        actions: [
          Icon(Icons.ac_unit,size: 30,),
        ],
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Form(
            key: formk,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return("Enter E-mail...");
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "E-mail",
                    
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 7, 234, 86),width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 8, 231, 49),width: 2),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 90, 4, 21),width: 2),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return("Enter Password...");
                    }
                    return null;
                  },
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.paypal_sharp),
                    labelText: "Password",
                    
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black,width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 0, 21, 103),width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 8, 231, 49),width: 2),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color.fromARGB(255, 90, 4, 21),width: 2),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  if (formk.currentState!.validate()) {
                    print("logged in successfully");
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