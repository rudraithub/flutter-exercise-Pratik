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

List a = [
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"
];

class _demoState extends State<demo> {
  RangeValues values = RangeValues(0, 100);
  bool isValue = false;
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text("grid ,stack,Rangeslider & switch"),
        ),
        body: Center(
            child: Column(
          children: [
            // Text("ON"),
           Switch(value: isValue, onChanged: (newValue){
            setState(() {
              isValue = newValue;
            });
           })
          ],
        )));
  }
}



//-----------------------------------------------------------------------------------------------------------


//  RangeSlider(
//                 labels: labels,
//                 values: values,
//                 min: 0,
//                 max: 100,
//                 divisions: 10,
//                 onChanged: (newValue) {
//                   setState(() {
//                     values = newValue;
//                   });
//                 }),

//---------------------------------------------------------------------------------------------------

// Stack(
//           alignment: Alignment.center,
//           children: [
//             Container(
//               color: Colors.amberAccent,
//               height: 800,
//               width: 800,
//             ),
//              Container(
//               color: Color.fromARGB(255, 29, 152, 4),
//               height: 600,
//               width: 600,
//             ),
//              Container(
//               color: Color.fromARGB(255, 8, 223, 194),
//               height: 400,
//               width: 400,
//             ),
//              Container(
//               color: Color.fromARGB(255, 216, 69, 246),
//               height: 200,
//               width: 200,
//             ),
//              Container(
//               color: const Color.fromARGB(255, 255, 64, 80),
//               height: 100,
//               width: 100,
//             ),
//           ],
//         ),

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 // GridView.builder(itemCount: a.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context ,index){
      //   return Image.network(a[index]);
      // }),
// ---------------------------------------------------------------------------------------
// GridView.extent(maxCrossAxisExtent:200,mainAxisSpacing: 10,crossAxisSpacing: 10,
      // children: [
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      //   Image.network("https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg?auto=compress&cs=tinysrgb&w=600"),
      // ],
      // ),