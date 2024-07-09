import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay? selectedTime;
  List a = [
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
    "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TIME PICKER & GRIDVIWE & GRIDCOUNT")),
     /* body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now(),initialEntryMode: TimePickerEntryMode.dialOnly);
                    if (time != null) {
                      setState(() {
                        selectedTime = time;
                      }
                      );
                    }
              },
              child: Text("Select Time")),
              SizedBox(height: 10,),
              if(selectedTime != null) Text("${selectedTime!.hour}:${selectedTime!.minute}")
        ],
      ),*/
      // body: GridView.count(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 3,
      //     children: List.generate(a.length, (i) {
      //       return Image.network("${a[i]}");
      //     })),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5),
        children: [
          Image.network(
              "https://images.pexels.com/photos/50594/sea-bay-waterfront-beach-50594.jpeg?auto=compress&cs=tinysrgb&w=300")
        ],
      ),
    );
  }
}

