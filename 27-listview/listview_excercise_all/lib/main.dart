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
  // var per = List<String>.generate(20,(i)=>"per ${i}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List view's "),
        backgroundColor: Colors.black26,
      ),

      //listview builder

      // body:  ListView.builder(
      //         itemCount: per.length,
      //         itemBuilder: (BuildContext context,Index){
      //           return ListTile(
      //             title: Text("Dopinder(●'◡'●)"),
                  // leading: Icon(Icons.heart_broken_outlined),
      //             trailing: Icon(Icons.accessible_rounded),
      //           );
      //         }
      //         ),

              //listview separeted
      // body: ListView.separated(
      //   itemCount: per.length,
      //   itemBuilder: (BuildContext context,index){
      //     return Card(
      //       child: Text(per[index]),
      //     );
      //   }, separatorBuilder: (BuildContext context, int index) { 
      //     return Padding(padding: EdgeInsets.all(20),
      //     child: Text("hello"),
      //     );
      //    },
      //   ),

        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((BuildContext context,index)
        {
          return Card(
          child: Padding(padding: EdgeInsets.all(10),
          child: Text("qt"),
          ),
          );
        }
        ),
        ),
    );
  }
}