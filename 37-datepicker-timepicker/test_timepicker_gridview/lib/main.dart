import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  TimeOfDay? selcttime;
  List x = [
    "https://images.pexels.com/photos/6955469/pexels-photo-6955469.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/8354500/pexels-photo-8354500.png?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/10890433/pexels-photo-10890433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11822434/pexels-photo-11822434.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black45,
        title: Text("TIME PICKER & GRID-VIEW"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()async{
              TimeOfDay? time=await showTimePicker(context: context, initialTime: TimeOfDay.now(),initialEntryMode: TimePickerEntryMode.dial);
              if (time!=null) {
                setState(() {
                  selcttime=time;

                });
              }
            }, child: Text("TIME")),
            if(selcttime!=null)
              Text("${selcttime!.hour}:${selcttime!.minute}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 50,crossAxisSpacing: 40),
      // children: [
      //   Image.network("https://images.pexels.com/photos/20831616/pexels-photo-20831616/free-photo-of-green-double-door-to-townhouse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      //   Image.network("https://images.pexels.com/photos/18729216/pexels-photo-18729216/free-photo-of-traditional-city-building-in-london.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
      //   Image.network("https://images.pexels.com/photos/20831616/pexels-photo-20831616/free-photo-of-green-double-door-to-townhouse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      //   Image.network("https://images.pexels.com/photos/18729216/pexels-photo-18729216/free-photo-of-traditional-city-building-in-london.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
      // ],
      // ),

      // GridView.count(crossAxisCount: 2,mainAxisSpacing: 5,
      // children: List.generate(x.length, (i){
      //   return  Image.network("${x[i]}");
      // }
      // ),
      // ),
    );
  }
}