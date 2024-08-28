import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quizbook_application/models/questionscreenmodel.dart';
import 'package:quizbook_application/views/congratulation.dart';

class Questioncontroller extends GetxController
{
  var isLoading = false.obs;
  var question = QuestionscreenModel(status: 0,data: [],message: '').obs;
  var currentQuestionIndex = 0.obs;

  void clearModel()
  {
    question.value = QuestionscreenModel(status: 0,data: [],message: '');
  }

  Future<void> fetchQuestion(int standardId, int subjectId,int chapterId) async{
    try{
      isLoading(true);

      var headers = {"Content-Type" : "application/json"};
      var body = json.encode({
        "stdid" : standardId,
        "subid" : subjectId,
        "chapterid" : chapterId,
      });
      var response = await http.post(Uri.parse("https://quizbook-api.rudraithub.com/std/subject/chapter/questions"),
      headers: headers,
      body: body,
      );

      if (response.statusCode ==200) {
        var jsondata = json.decode(response.body);
        print("Json Data : $jsondata");
        question.value = QuestionscreenModel.fromJson(jsondata);
        currentQuestionIndex.value = 0;
        print("Questions Fetched : ${question.value.data!.length}");
      }
      else
      {
        var responsedata = json.decode(response.body);
        print("Error : ${responsedata['message']}");
      }
    }
    catch(e)
    {
      print("Expection : $e");
      question.value = QuestionscreenModel(status: 0,data: [],message: '');
    }
    finally
    {
      isLoading(false);
    }
  }
  void nextQuestion ()
  {
    if(currentQuestionIndex.value < question.value.data!.length - 1)
    {
      currentQuestionIndex.value++;
    }
    else
    {
      Get.to(congo_screen());
    }
  }
}

