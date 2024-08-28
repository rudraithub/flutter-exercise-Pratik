import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/quize_result.dart';

class history_screen extends StatefulWidget {
  const history_screen({super.key});

  @override
  State<history_screen> createState() => _history_screenState();
}

class _history_screenState extends State<history_screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Activity",style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 5,
        centerTitle: true,
        shadowColor: greyColor,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) { 
          return Row(
            children: [
              SizedBox(height: height*0.33,),
              Container(
                // color: const Color.fromARGB(255, 13, 13, 13),
                width:Width*1,
                child: InkWell(
                  onTap: () {
                    Get.to(quize_result_screen());
                  },
                  child: Card(
                    color: whitecolor,
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    elevation: 8,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        // SizedBox(height: 40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            // SizedBox(width: 10,),
                            Text("STD : 5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(height: 10,),
                            // SizedBox(width: 10,),
                            Text("English - Chapter : 1. The Little B...",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            // SizedBox(width: 10,),
                            Row(
                              children: [
                                // SizedBox(height: 10,),
                                Image.asset(timeicon,height: 25,width: 20,),
                              SizedBox(width: 5,),
                              // SizedBox(height: 10,),
                              Text("Just now",style: TextStyle(fontWeight: FontWeight.bold),),
                              // SizedBox(height: 10,),
                              ],
                            ),
                            SizedBox(height: 10,),
                          ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor:Colors.grey.shade200,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                          onPressed: (){
                            Get.to(quize_result_screen());
                          }, child: Text("Done",style: TextStyle(color: Purplecolor),),),
                          SizedBox(height: 20,),
                          // SizedBox(width: 200,),
                          ],
                        ),
                        SizedBox(height: 60,),
                        SizedBox(width: 50,),
                        
                        Container(
                          height: 130,
                          width: 50,
                          child: CircularPercentIndicator(
                                    radius: 40,
                                    percent: 0.4,
                                    progressColor: Purplecolor,
                                    animation: true,
                                    animationDuration: 1000,
                                    center: Text("40%",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                        ),
                        SizedBox(height: 180,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
         },
      ),
    );
  }
}
        