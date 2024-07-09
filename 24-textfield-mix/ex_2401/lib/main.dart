import 'package:flutter/material.dart';

void main()
{
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("TextForm Field Demo"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_4,color: Colors.pinkAccent,),
                  labelText: "Enter User Name",
                  labelStyle: TextStyle(color: Colors.pinkAccent),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 69, 14, 33),width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2,color: Colors.pinkAccent,),
                  labelText: "Enter User Name",
                  labelStyle: TextStyle(color: Colors.pinkAccent),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 69, 14, 33),width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.pinkAccent,),
                  labelText: "Enter Search Item",
                  labelStyle: TextStyle(color: Colors.pinkAccent),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent,width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 69, 14, 33),width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                ),
                
              
            ],
          ),
        ),
      ),
    );
  }
}