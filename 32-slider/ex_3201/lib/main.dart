
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
      debugShowCheckedModeBanner: false,
      title: "Slider",
      theme: ThemeData.fallback(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Range Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSlider(
              labels: labels,
              min: 0,
              max: 100,
              divisions: 10,
              values: values,
              activeColor: const Color.fromARGB(255, 240, 158, 186),
              inactiveColor: Colors.pink,
               onChanged: (newValue){
                setState(() {
                  values = newValue;
                  
                });
            }),

            SizedBox(height: 20,),

            Text("RangeSlider Value : ${values.toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.brown),)
          ],
        ),
      ),
    );
  }
}
