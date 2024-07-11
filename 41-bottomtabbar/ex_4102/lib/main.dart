import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          title: Text("Bottom Tabbar Exammple"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Email Screen",
                style: TextStyle(
                    color: const Color.fromARGB(255, 2, 2, 2),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Icon(
                Icons.email_outlined,
                color: Color.fromARGB(255, 152, 173, 29),
              )
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email_outlined,
              color: Color.fromARGB(255, 152, 173, 29),
            ),
            label: "Email",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              label: "Profile"),
        ]));
  }
}