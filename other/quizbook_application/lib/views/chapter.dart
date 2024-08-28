import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/controller/chaptercontroller.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/question.dart';

class chapter_page extends StatefulWidget {
  final int stdid;
  final int subid;
  final String subjectName;
  final String standard;

  const chapter_page({super.key, required this.stdid, required this.subid, required this.subjectName, required this.standard});
  
  @override
  State<chapter_page> createState() => _chapter_pageState();
}

class _chapter_pageState extends State<chapter_page> {
  Chaptercontroller chapter_controller = Get.put(Chaptercontroller());//controller
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    print(widget.subjectName);
    chapter_controller.fetchchapter(widget.stdid,widget.subid);
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text("${widget.standard.toString()} : ${widget.subjectName.toString()}",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Obx((){
        if (chapter_controller.isLoading.value) {
          return Center(child: CircularProgressIndicator(),);
        }
        else if(chapter_controller.chapterlist.value.data!.isEmpty){
          return Center(child: Text("Data not found.."),);
        }
        else{
          if (chapter_controller.isLoading.value) {
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
          itemCount: chapter_controller.chapterlist.value.data!.length,
          itemBuilder: (BuildContext context, int index) { 
          var item = chapter_controller.chapterlist.value.data![index];

            return InkWell(
              onTap: () {
                Get.to(()=>question_page(chapterid: item.chapterid!.toInt(),stdid: widget.stdid, subid: widget.subid,chapterName: item.content.toString(),));
              },
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    SizedBox(height: 120,),
                    Column(
                      children: [
                        // SizedBox(height: 10,),
                        // SizedBox(width: 20,),
                        CircleAvatar(
                          radius: 40,
                            backgroundImage: AssetImage(imagechapterpage,),
                            child: Center(
                              child: Text("${item.chapterno}",style: TextStyle(color: whitecolor,fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                        ),
                        SizedBox(height: 10,),
                        // SizedBox(width: 50,),
                      ],
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: height*0.15,
                      width: Width*0.69,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(width: 200,),
                          Row(
                            children: [
                              SizedBox(width: 7,),
                              Text("Ch No ${item.chapterno} : ${item.content}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ],
                          ),
        
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 7,),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage: AssetImage(imagelogo),
                              ),
                              SizedBox(width: 5,),
                              Text("${item.teacher}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              
                            ],
                          ),
                          SizedBox(height: 10,),
        
                          Row(
                            children: [
                              SizedBox(width: 7,),
                              Image.asset(imagechaptermsg,height: 20,width: 20,),
                              SizedBox(width: 5,),
                              Text("Question NO: ${item.que}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 5,),
                              Image.asset(imagetimeicon,height: 20,width: 20,),
                              SizedBox(width: 5,),
                              Text("${item.minute}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
           },
        );
        }
      },
      ),
    );
  }
}