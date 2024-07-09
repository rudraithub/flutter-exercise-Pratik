import 'package:flutter/material.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

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
  RangeValues value = RangeValues(0, 50);
  bool isval = false;
  @override
  Widget build(BuildContext context) {
    RangeLabels lable =  RangeLabels(value.start.toString(), value.end.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Demo"),
        backgroundColor: Color.fromARGB(255, 3, 196, 141),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                color: Color.fromARGB(255, 237, 142, 48),
                height: 300,
                width: 300,
              ),
              Container(
                color: Color.fromARGB(255, 75, 212, 233),
                height: 200,
                width: 200,
              ),
              Image.network(
                "https://images.pexels.com/photos/26049751/pexels-photo-26049751/free-photo-of-a-black-and-white-photo-of-a-kangaroo-standing-in-the-grass.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 100,
                width: 150,
              ),
            ],
          ),
          RangeSlider(labels: lable,values: value,min: 0,max: 50,divisions: 10, onChanged: (newval){
            setState(() {
              value=newval;
            });
          }),
          Text("$value",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text("Click 👇 To Turn On Dark Mode",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Switch(
              value: isval,
              activeColor: Colors.lightBlueAccent,
              hoverColor: Color.fromARGB(238, 229, 98, 98),
              onChanged: (newvalue) {
                setState(() {
                  isval = newvalue;
                });
              }),
        ],
      ),

      /*body: GridView.extent(maxCrossAxisExtent: 300,mainAxisSpacing: 2,crossAxisSpacing: 2,
      children: [
        Image.network("https://images.pexels.com/photos/19094469/pexels-photo-19094469/free-photo-of-close-up-of-a-person-holding-an-autumnal-oak-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        Image.network("https://images.pexels.com/photos/17192407/pexels-photo-17192407/free-photo-of-hand-holding-a-clover-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        Image.network("https://images.pexels.com/photos/9865049/pexels-photo-9865049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        Image.network("https://images.pexels.com/photos/15271896/pexels-photo-15271896/free-photo-of-close-up-of-woman-holding-a-brown-maple-leaf.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
      ],
      ),*/
    );
  }
}
