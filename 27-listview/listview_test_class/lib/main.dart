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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List-View"),
      ),
      body: ListView(
        children: 
          ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                leading: Icon(Icons.person_add_disabled),
                title: Text("MR.Dhrumil😎"),
                isThreeLine: true,
                trailing: Icon(Icons.ac_unit_sharp),
                subtitle: Text("Incoming call...\nred alert \nred alert"),
                splashColor: Colors.pink,
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.person_add_disabled),
                title: Text("MS.Dhurti🫡"),
                isThreeLine: true,
                trailing: Icon(Icons.ac_unit_sharp),                
                subtitle: Text("Incoming call...\nred alert \nred alert"),
                splashColor:  Colors.pink,
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.person_add_disabled),
                title: Text("MR.Jainum👌"),
                isThreeLine: true,
                trailing: Icon(Icons.ac_unit_sharp),
                subtitle: Text("Incoming call...\nred alert \nred alert"),
                splashColor:  Colors.pink,
                onTap: () {
                  
                },
              ),
            ]
          ).toList(),
      ),
    );
  }
}

