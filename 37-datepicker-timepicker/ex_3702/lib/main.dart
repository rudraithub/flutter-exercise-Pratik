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
  DateTime? selectdate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Date"),
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datetime = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2026));
                    if (datetime != null) {
                      setState(() {
                        selectdate = datetime;
                      });
                    }
                  },
                  child: Row(
                    children: [
                      Icon(Icons.date_range),
                      SizedBox(width: 10,),
                      Text("Select Date")
                    ],
                  )),
                  SizedBox(height: 15,),
                  if(selectdate != null)
                  Text("${selectdate!.day}/${selectdate!.month}/${selectdate!.year}",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}