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
        backgroundColor: Colors.black12,
        title: Text("List View"),
      ),
      body: ListView.builder(itemCount: 5,
      itemBuilder: (BuildContext context,index)
      {
        return Column(
          children: [
            ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Rudri💌"),
              trailing: Icon(Icons.call),
              onTap: () {
                
              },
              splashColor: Color.fromARGB(255, 234, 60, 234),
              
             ),

              ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Dhrumil🤠"),
              trailing: Icon(Icons.call),
               onTap: () {
                
              },
              splashColor: Color.fromARGB(255, 4, 162, 170),
             ),
             
              ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Pratik💀"),
              trailing: Icon(Icons.call),
               onTap: () {
                
              },
              splashColor: Color.fromARGB(255, 94, 51, 233),
             ),
              
          ],
        );
      }
      ),








      /*
      ListView(
              children :ListTile.divideTiles(
                context: context,
                tiles: [
                ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Prtik💀"),
              trailing: Icon(Icons.call),
             ),
             ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Sanjna💀"),
              trailing: Icon(Icons.call),
             ),
             ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Hetvi💀"),
              trailing: Icon(Icons.call),
             ),
             ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Rudri💀"),
              trailing: Icon(Icons.call),
             ),
              ListTile(
              leading: Icon(Icons.account_box_rounded),
              title: Text("Asal💀"),
              trailing: Icon(Icons.call),
             ),
                ],
              ).toList(),
              ),

              */
    );
  }
}