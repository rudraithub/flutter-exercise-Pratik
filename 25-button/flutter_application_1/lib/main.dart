import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button"),
        centerTitle: true,
        ),
        body: Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){}, child: Text("press here"),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text("press here"),
                style: ElevatedButton.styleFrom(foregroundColor: Colors.amberAccent),
                ),
                SizedBox(height: 20,),
                IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm),
                ),
                SizedBox(height: 20,),
                FloatingActionButton(onPressed: (){},child: Text("hel"),
                ),
                SizedBox(height: 20,),
                OutlinedButton(onPressed: (){}, child: Text("go"),
                ),
                SizedBox(height: 20,),

                Icon(Icons.accessible_outlined,size: 100,),

                SizedBox(height: 20,),

                Icon(Icons.abc_rounded,size: 50,),
          ], 
          ),
            ),
            ),
            ),
  );
}

