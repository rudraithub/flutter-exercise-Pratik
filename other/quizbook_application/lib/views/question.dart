import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizbook_application/controller/questioncontroller.dart';
import 'package:quizbook_application/utils/contstant.dart';
import 'package:quizbook_application/views/congratulation.dart';

class question_page extends StatefulWidget {
  final int chapterid;
  final int stdid;
  final int subid;
  final String chapterName;

  const question_page(
      {super.key,
      required this.chapterid,
      required this.stdid,
      required this.subid,
      required this.chapterName});

  @override
  State<question_page> createState() => _question_pageState();
}

class _question_pageState extends State<question_page> {
  final Questioncontroller question_controller = Get.put(Questioncontroller());
  int? selectOption;
  bool isAnswerd = false;
  int? correctAnswerIndex;
  int right = 0;
  int wrong = 0;

  @override
  void initState() {
    super.initState();
    question_controller.fetchQuestion(
        widget.stdid, widget.subid, widget.chapterid);
  }

  List<Map<String, dynamic>> userAnswers = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var Width = size.width;
    return Scaffold(
      body: Obx(() {
        if (question_controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (question_controller.question.value.data == null ||
            question_controller.question.value.data!.isEmpty) {
          return Center(
            child: Text("No que Available"),
          );
        } else {
          var question = question_controller.question.value
              .data![question_controller.currentQuestionIndex.value];
              print(question);
          correctAnswerIndex = question.rightAns?.toInt();
          print("Chapter id:${widget.chapterid}");

          return Column(
            children: [
              // SizedBox(height: 50,),
              Container(
                height: height * 0.25,
                width: Width * 1,
                decoration: BoxDecoration(
                    color: Purplecolor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      widget.chapterName,
                      style: TextStyle(
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      question.question.toString(),
                      style: TextStyle(
                          color: whitecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    /*Text("number ?",style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold,fontSize: 20),),
                  // SizedBox(height: 13,),*/
                  ],
                ),
              ),
              // SizedBox(height: 20,),
              // Divider(height: 2,),

              SizedBox(
                // height: double.infinity,
                // width: double.infinity,
                height: 400,
                // width: 500,
                child: ListView.builder(
                  itemCount: question.option?.length,
                  itemBuilder: (BuildContext, int index) {
                    var option = question.option![index];

                    Color buttoncolor = whitecolor;
                    if (isAnswerd) {
                      if (index == correctAnswerIndex) {
                        print("c ${index} ${correctAnswerIndex}");
                        buttoncolor = greencolor;
                      } else if (index == selectOption) {
                        print("W ${index}");
                        buttoncolor = redcolor;
                      }
                    }
                    return Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttoncolor,
                            alignment: Alignment.centerLeft,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          setState(() {
                            selectOption = index;
                            isAnswerd = true;
                            print(isAnswerd);

                            if (selectOption == correctAnswerIndex) {
                              right++;
                              print("Right One : ${right}");
                            } else {
                              wrong++;
                            }
                          });
                        },
                        child: Text(
                          "${String.fromCharCode(65 + index)} : $option",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    );
                  },
                ),
              ),

              Spacer(),
              Center(
                child: Container(
                  color: Color(0xFF6c33d1),
                  margin: EdgeInsets.only(right: 5, left: 5),
                  // margin: ,
                  height: height * 0.05,
                  width: Width * 1,
                  child: InkWell(
                    // radius: 300,
                    onTap: () {
                      if (isAnswerd) {
                        userAnswers.add({
                          "queid": question.queid,
                          "user_answer": selectOption,
                        });
                        print("list : ${userAnswers}");
                        setState(() {
                          selectOption = null;
                          isAnswerd = false;
                        });
                        question_controller.nextQuestion();
                      }
                      // Get.to(congo_screen());
                    },
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 5,
              ),
            ],
          );
        }
      }),
    );
  }
}
