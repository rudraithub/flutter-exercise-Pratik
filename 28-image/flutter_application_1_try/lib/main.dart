import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: img(),
    );
  }
}

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image..."),
        backgroundColor: Color.fromARGB(255, 255, 149, 87),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
              //  foregroundImage:NetworkImage("http://thewowstyle.com/wp-content/uploads/2015/01/images-of-nature-4.jpg"),
               backgroundImage: NetworkImage("http://www.pixelstalk.net/wp-content/uploads/2016/08/Free-Download-Wildlife-Image.jpg"),
               radius: 50,
              ),
              SizedBox(height: 20,),
              // Image.network("https://jooinn.com/images/lonely-tree-reflection-3.jpg"),
              // Image.asset("images/p1.jpg"),      
              SizedBox(height: 20,),
              //textfield
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  hintText: "username",
                  labelText: "uid",
                  helperText: "username",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 13, 156, 8),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(

                  ),
                  // focusColor: Colors.amberAccent,                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}