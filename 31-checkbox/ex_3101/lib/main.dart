import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  bool check = true;
  bool chec = false;
  bool che = false;
  bool ch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Check Box"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
                title: Text("Chess"),
                hoverColor: Colors.blueAccent,
                activeColor: Color.fromARGB(255, 67, 97, 112),
                tileColor: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: 10,
              ),

              CheckboxListTile(
                value: chec,
                onChanged: (value) {
                  setState(() {
                    chec = value!;
                  });
                },
                title: Text("Cricket"),
                hoverColor: Colors.blueAccent,
                activeColor: Color.fromARGB(255, 67, 97, 112),
                tileColor: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: 10,
              ),

              CheckboxListTile(
                value: che,
                onChanged: (value) {
                  setState(() {
                    che = value!;
                  });
                },
                title: Text("Carrom"),
                hoverColor: Colors.blueAccent,
                activeColor: Color.fromARGB(255, 67, 97, 112),
                tileColor: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: 10,
              ),

              CheckboxListTile(
                value: ch,
                onChanged: (value) {
                  setState(() {
                    ch = value!;
                  });
                },
                title: Text("Hockey"),
                hoverColor: Colors.blueAccent,
                activeColor: Color.fromARGB(255, 67, 97, 112),
                tileColor: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}