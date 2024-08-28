import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/controller/homescreencontroller.dart';
// import 'package:quizbook_application/models/homescreenmodel.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/chapter.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    final Standardcontrolller controller = Get.put(Standardcontrolller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Standards"),
        elevation: 8,
        shadowColor: greyColor,
      ),
      body: Obx((){
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator(),);
        }
        else
        {
          print("Standard List Length : ${controller.stdList.length}");
        }
      
        return ListView.builder(
          itemCount: controller.stdList.length,
          itemBuilder: (context,int Stdind){
            final standard = controller.stdList[Stdind];
            final Subject = standard.subjects!.length;
            int? stdid = standard.stdid;

            print("Standard ${Stdind} Subjects length : ${Subject}");

          return Card(
            child: Padding(
              padding: EdgeInsets.only(right: 5,left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Standard ${standard.std}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                      SizedBox(width: Width*0.55,),
                      Container(
                        height: 25,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Purplecolor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text("New",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Divider(height: 5,),
                  SizedBox(height: 5,),
                  Container(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Subject,
                      itemBuilder: (context,int subindex){
                        var subid = standard.subjects![subindex].subid;
                        return Container(
                         
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(right: 10,),
                              child:InkWell(
                                onTap: () {
                                  Get.to(chapter_page(
                                    stdid: stdid!.toInt(),
                                    subid: subid!.toInt(), 
                                    subjectName: standard.subjects![subindex].subjectName.toString(),
                                    standard: standard.std.toString(),
                                    ),
                                    );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(38),
                                    child: Image.network(
                                      standard.subjects![subindex].img.toString(),
                                    fit: BoxFit.cover,height: 90,width: 95,),
                                ),
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                standard.subjects![subindex].subjectName.toString(),
                              ),
                            ],
                          ),
                        );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
        );
  },
      ),
    ); 
  }
}

//custom paint
//ListView.separated(itemBuilder: (BuildContext context,int index){
    //   return Card(
    //   elevation: 8,
    //   child: Container(
    //     height: height*0.25,
    //     width: double.infinity,
    //     child: Column(
    //       children: [
    //         SizedBox(height: 5,),
    //         Row(
    //           children: [
    //             SizedBox(width: 5,),
    //             Text("Standard : 5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    //             SizedBox(width: 190,),
    //             InkWell(
    //               onTap: (){

    //               },
    //               child: Container(
    //                 // height: height*0.04,
    //                 width: Width*0.11,
    //                 color: Purplecolor,
    //                 child: Center(
    //                   child: Text("New",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold),),
    //                   ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         SizedBox(height: 4,),
            
    //         Container(
    //           height: 5,
    //           width: 350,
    //           child: CustomPaint(
    //             foregroundPainter: LinePainter(),
    //           ),
    //         ),
    //         SizedBox(height: 15,),
    //         Row(
    //           children: [
    //             SizedBox(width: 15,),
    //             Column(
    //               children: [
    //                 InkWell(
    //                   onTap: (){

    //                   },
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(38),
    //                     child: Image.network("https://thumbs.dreamstime.com/z/english-british-england-language-education-concept-58368527.jpg",fit: BoxFit.cover,height: 90,width: 95,),
    //                   ),
    //                 ),

    //                 SizedBox(height: 5,),
    //                 Text("English",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
    //               ],
    //             ),
    //           ],
    //         ),
            

    //       ],
    //     ),
    //   ),
    // );
    // }, separatorBuilder: (BuildContext context,int index){
    //   return SizedBox(height: 5,);
    // }, itemCount: 4);
// class LinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = greyColor
//       ..strokeWidth = 1.0;

//     // Draw a long line
//     canvas.drawLine(
//       Offset(0, size.height / 2), // Start point
//       Offset(size.width, size.height / 2), // End point
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
