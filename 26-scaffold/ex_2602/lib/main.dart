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
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        title: Text("Scaffold"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            

            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.login),
                  title: Text("Log In"),
                ),
                ListTile(
                  leading: Icon(Icons.save),
                  title: Text("Save"),
                ),
                
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text("Update"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}