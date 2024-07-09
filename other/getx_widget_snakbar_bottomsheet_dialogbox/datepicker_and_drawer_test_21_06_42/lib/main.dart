import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  DateTime? dt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DatePicker And Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 11, 119, 116)),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/25949813/pexels-photo-25949813/free-photo-of-meerkat.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    radius: 40,
                  ),
                  
                  Text("Hello This is PRatik...💀",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                  Text("dopinder@gmail.com",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 13)),
                ],
              ),
              ),
              ListTile(
                leading: Icon(Icons.notification_add_outlined),
                title: Text("Notification",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: Icon(Icons.reviews_outlined),
                title: Text("Review",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text("Payment",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting",style: TextStyle(fontWeight: FontWeight.w600)),
              ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              DateTime? date = await showDatePicker(context: context, firstDate: DateTime(2004), lastDate: DateTime(2010));
              if (date != null) {
                setState(() {
                   dt=date;
                });
               
              }
            }, child: Text("Select your death Day"),),
        
            if(dt != null)
              Text("${dt!.day}/${dt!.month}/${dt!.year}"),
          ]
        ),
      ),
    );
  }
}