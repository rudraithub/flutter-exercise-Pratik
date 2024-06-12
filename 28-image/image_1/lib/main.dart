import 'package:flutter/material.dart';
import 'package:image_1/com_image.dart';

void main() {
  runApp(const MyApp());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Excerise all"),
      ),
      body: Center(
        child: Container(
          child: Column(
            
            children: [
              // SizedBox(height: 30,),
              img_ccomm(imgnet: "https://images.pexels.com/photos/12189045/pexels-photo-12189045.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              SizedBox(height: 30,),
              com_img(img: "https://images.pexels.com/photos/12189059/pexels-photo-12189059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
              h: 300, 
              w: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
