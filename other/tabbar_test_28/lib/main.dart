import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        // actions: [Icon(Icons.install_mobile_outlined)],
        title: Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 30),),
        backgroundColor: Color.fromARGB(255, 8, 102, 128),
        bottom: TabBar(tabs: [
          Tab(
            icon:Icon(Icons.home_filled,color: Colors.black,),
            child: Text("Chat",style: TextStyle(fontSize: 15,color: Colors.black)),
          ),
          Tab(
            icon:Icon(Icons.star_border_outlined,color: Colors.black,),
            child: Text("Status",style: TextStyle(fontSize: 15,color: Colors.black)),
          ),
          Tab(
            icon:Icon(Icons.call_sharp,color: Colors.black,),
            child: Text("Calls",style: TextStyle(fontSize: 15,color: Colors.black)),
          ),
        ]),
      ),
      body: TabBarView(children: [
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screen 1...",style: TextStyle(fontSize: 50,color: Colors.black),),
              // showModalBottomSheet(context: context, builder: builder)
              ElevatedButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Text("Delte"),
                      ),
                      ListTile(
                        leading: Icon(Icons.architecture),
                        title: Text("archive"),
                      ),
                    ],
                  );
                });
              }, child: Text("Click-here")),
            ],
          ),
          
        ),
        Tab(
          child: Text("Screen 2...",style: TextStyle(fontSize: 50,color: Colors.black)),
        ),
        Tab(
          child: Text("Screen 3...",style: TextStyle(fontSize: 50,color: Colors.black)),
        )
      ]),
    ));
  }
}