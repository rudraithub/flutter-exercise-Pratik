import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("ListView"),
      ),
      // body:ListView (
      //   scrollDirection: Axis.vertical,
      //     children: [
      //       Container(
      //         height: 150,
      //         width: 350,
      //         color: Colors.black,
      //       ),
      //       Container(
      //         height: 150,
      //         width: 350,
      //         color: const Color.fromARGB(255, 185, 1, 1),
      //       ),
      //       Container(
      //         height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 6, 15, 58),
      //       ),
      //       Container(
      //         height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 31, 153, 57),
      //       ),
      //       Container(
      //         height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 162, 6, 144),
      //       ),
      //     ],
      //   ),

      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Column(
      //       children: [
      //         Container(
      //            height: 150,
      //         width: 350,
      //         color: Colors.black,
      //         ),
      //          Container(
      //            height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 60, 7, 192),
      //         ),
      //          Container(
      //            height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 250, 6, 120),
      //         ),
      //          Container(
      //            height: 150,
      //         width: 350,
      //         color: const Color.fromARGB(255, 206, 6, 6),
      //         ),
      //          Container(
      //            height: 150,
      //         width: 350,
      //         color: Colors.black,
      //         ),
      //          Container(
      //            height: 150,
      //         width: 350,
      //         color: Color.fromARGB(255, 64, 198, 6),
      //         ),
              
      //       ],
      //     ),
      //   ],
      // ),

      // body: Column(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.call_merge_rounded,size: 40,),
      //       trailing: Icon(Icons.follow_the_signs_rounded),
      //       title: Text("Rudri😎",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
      //       subtitle: Text("Khadush is calling \nred alert \nred alert ",style: TextStyle(color: Colors.redAccent.shade700),),
      //       isThreeLine: true,
      //       onTap: () {
              
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.stay_current_landscape_outlined),
      //       trailing: Icon(Icons.call_end_outlined),
      //       title: Text("Dopinder🫡"),
      //       subtitle: Text("incoming call"),
      //       onTap: () {
              
      //       },
      //     ),
      //   ],
      // ),

      // body: ListTile.divideTiles(
      //   tiles: [
      //     ListTile(
      //       leading: Icon(Icons.stay_current_landscape_outlined),
      //       trailing: Icon(Icons.call_end_outlined),
      //       title: Text("Dopinder🫡"),
      //       subtitle: Text("incoming call"),
      //       onTap: () {
              
      //       },
      //   ],
      // ).toList(),

      body: ListView(
        children: 
          ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
            leading: Icon(Icons.stay_current_landscape_outlined),
            trailing: Icon(Icons.call_end_outlined),
            title: Text("Dopinder🫡"),
            subtitle: Text("incoming call"),
            onTap: () {
              
            },),
            ListTile(
            leading: Icon(Icons.stay_current_landscape_outlined),
            trailing: Icon(Icons.call_end_outlined),
            title: Text("Dopinder🫡"),
            subtitle: Text("incoming call"),
            onTap: () {
              
            },)
            ] ).toList(),
        
      ),
      );
  }
}