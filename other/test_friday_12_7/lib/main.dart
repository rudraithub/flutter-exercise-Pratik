import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PrAtIk"),
        backgroundColor: Colors.red[200],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 330,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage("https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    SizedBox(width: 2,),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Lorem",style: TextStyle(fontWeight: FontWeight.w600)),
                        Text("Lorem ilujan"),
                      ],
                    ),
        
                    SizedBox(width: 50,),
        
                    ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(30, 50),shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),shadowColor: Color.fromARGB(255, 95, 95, 109),),
                    onPressed: (){
        
                    }, child: Text("Lorem ipsum",style: TextStyle(fontSize: 16),)),
                  ],
                ),
              ),
        
              SizedBox(height: 20,),
        
              Container(
                height: 200,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 249, 231, 181),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    
                    Text("Text of printing and typetesting",style: TextStyle(fontWeight: FontWeight.w600),),
                    Text("Industry",style: TextStyle(fontWeight: FontWeight.w600),),
        
                     SizedBox(height: 20,),
        
                    Opacity(
                      opacity: 0.7,
                    child:  Text("Text of printing and typetesting industry"),
                    ),
                     Opacity(
                      opacity: 0.7,
                    child:  Text("Lorem ipsum has been this the industry's standard"),
                     ),
                      Opacity(
                      opacity: 0.7,
                    child:  Text("dummy."),
                      ),
        
                      SizedBox(height: 10,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SizedBox(width: 10,),
        
                          Icon(Icons.chat,size: 30,),
        
                          // SizedBox(width: 40,),
        
                          TextButton(style: TextButton.styleFrom(backgroundColor: Colors.black,shape:BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),minimumSize: Size(100, 50), ),
                            onPressed: (){
        
                          }, child: Text("Lorem",style: TextStyle(color: Colors.white),),),
        
                          // SizedBox(width: 20,),
        
                          TextButton(style: TextButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(100, 50),shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(4))),
                            onPressed: (){
        
                          }, child: Text("Lorem",style: TextStyle(color: Colors.black),),),
                          
                          // SizedBox(width: 40,),
        
                          Icon(Icons.share,size: 30,),
                        ],
                      ),
                  ],
                ),
              ),
        
              SizedBox(height: 20,),
        
              Container(
                height: 150,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 249, 231, 181),
                ),
        
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    
                    Text("Lorem ipsum Title",style: TextStyle(fontWeight: FontWeight.w600,),),
        
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        CircleAvatar(
                          radius: 25,
                          foregroundImage: NetworkImage("https://images.pexels.com/photos/5806695/pexels-photo-5806695.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Lorem ipsum",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              Text("Lorem",textAlign: TextAlign.left,),
                            ],
                          ),
                        ),
                        Icon(Icons.remove_red_eye),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        
                         SizedBox(width: 20,),
                        CircleAvatar(
                          radius: 25,
                          foregroundImage: NetworkImage("https://images.pexels.com/photos/8311903/pexels-photo-8311903.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                        ),
                        SizedBox(width: 5,),
                        Opacity(
                        opacity: 0.7,
                        child:  Text("Add a comment"),
                    ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                height: 670,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 249, 202, 181),
                ),
                child: Column(
                  children: [

                    SizedBox(height: 20,),

                    Text("Lorem ipsum Title",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),

                    // SizedBox(width: 30,),

                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(width: 30,),
                              Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                            ],
                          ),
                          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(width: 30,),
                              Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(width: 30,),
                              Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            child: Card(
                            color: Colors.black12,
                          ),
                          ),
                            ],
                          ),
                         
                        ],
                      ),
                    ),

                  ],
                ),
          ),

            ],
          ),
        ),
      ),
    );
  }
}