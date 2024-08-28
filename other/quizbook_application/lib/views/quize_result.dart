import 'package:flutter/material.dart';
import 'package:quizbook_application/utils/contstant.dart';

class quize_result_screen extends StatefulWidget {
  const quize_result_screen({super.key});

  @override
  State<quize_result_screen> createState() => _quize_result_screenState();
}

class _quize_result_screenState extends State<quize_result_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Results"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width:double.infinity,
            
            child: Card(
              color: lightgreencolor,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 60,
                    child: Card(
                      elevation: 5,
                      color: lightgreencolor,
                      child: Column(
                        children: [
                          Text("Total Question",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("5"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    child: Card(
                      elevation: 5,
                      color: lightgreencolor,
                      child: Column(
                        children: [
                          Text("Right Answer",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("2"),
                        ],
                      ),
                    ),
                  ),
                  // Text("5"),
                  Container(
                    height: 60,
                    width: 120,
                    child: Card(
                      elevation: 5,
                      color: lightgreencolor,
                      child: Column(
                        children: [
                          Text("Wrong Answer",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("3"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10,),
          Container(
            height:600 ,
            child: ListView.separated(itemBuilder: (BuildContext context,int index){
              return Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                color: lightgreencolor,
                child: Padding(
                  
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(width: 400,),
                      Text("What is the main factor",style: TextStyle(fontSize: 20),),
                      Text("responsible for the formation of",style: TextStyle(fontSize: 20),),
                      Text("mountains?",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("A : Erosion"),
                      Text("B : Volcanic activity"),
                      Text("C : Plate tectonics",style: TextStyle(color: Purplecolor),),
                      Text("D : Wind erosion"),
                      SizedBox(height: 20,),
                      // SizedBox(width: 400,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("User Answer : Volcanic activity",textAlign: TextAlign.end,style: TextStyle(color: Purplecolor),),
                        ],
                      ),

                      // SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            );
            
            },
            itemCount: 3, separatorBuilder: (BuildContext context, int index) { 
              return SizedBox(height: 10,);
             },
            ),
          ),
        ],
      ),
    );
  }
}