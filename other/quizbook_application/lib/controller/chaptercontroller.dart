import 'dart:convert';

import 'package:get/get.dart';
import 'package:quizbook_application/models/chapterscreenmodel.dart';
import 'package:http/http.dart' as http;

class Chaptercontroller extends GetxController {
  var isLoading = false.obs;
  var chapterlist = ChapterscreenModel(status:  0, data: [],message: '').obs;

  void clearmodel()
  {
    chapterlist.value = ChapterscreenModel(status: 0,data: [],message: '');
  }

  Future<void> fetchchapter(int standardId, int subjectId) async{
    try{
      isLoading(true);

      var headers = {'Content-Type' : 'application/json'};
      var body = json.encode({"stdid":standardId, "subid" : subjectId});
      var response = await http.post(Uri.parse('https://quizbook-api.rudraithub.com/std/subject/chapter'),
      headers: headers,
      body: body,
      );

      if (response.statusCode == 200) {
        var jsonString = response.body;
        chapterlist.value = chapterscreenModelFromJson(jsonString);
      }
      else
      {
        var responseData = json.decode(response.body);
        print('Error: ${responseData['message']}');
      }
    }
    catch(e)
    {
      chapterlist.value = ChapterscreenModel(status: 0,data: [],message: '');
    }
    finally
    {
      isLoading(false);
    }
  }
}