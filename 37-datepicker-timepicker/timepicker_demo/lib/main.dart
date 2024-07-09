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
  // TimeOfDay? selectime;
  List x = [
    "https://images.pexels.com/photos/26125407/pexels-photo-26125407/free-photo-of-a-gray-butterfly-sitting-on-a-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14641606/pexels-photo-14641606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/20831616/pexels-photo-20831616/free-photo-of-green-double-door-to-townhouse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TImePIcker"),
      ),
      body: /*Column(
        children: [
          ElevatedButton(onPressed: ()async{
            TimeOfDay? time=await showTimePicker(context: context, initialTime: TimeOfDay.now(),initialEntryMode: TimePickerEntryMode.dial);
            if (time!=null) {
              setState(() {
                selectime=time;
              });
            }
          }, child: Text("Time")),
          if(selectime!=null)
            Text("${selectime!.hour}:${selectime!.minute}"),
*/
         /*   GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 5),
            children: [
              Image.network("https://images.pexels.com/photos/26125407/pexels-photo-26125407/free-photo-of-a-gray-butterfly-sitting-on-a-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 150,width: 150,),
              Image.network("https://images.pexels.com/photos/14641606/pexels-photo-14641606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 150,width: 150,),
              Image.network("https://images.pexels.com/photos/26125407/pexels-photo-26125407/free-photo-of-a-gray-butterfly-sitting-on-a-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 150,width: 150,),
              Image.network("https://images.pexels.com/photos/26125407/pexels-photo-26125407/free-photo-of-a-gray-butterfly-sitting-on-a-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",height: 150,width: 150,),
            ],
            ),*/
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              children: List.generate(x.length, (i){
                return Image.network("${x[i]}");
              }
              ),
              ),
      );
  }
}