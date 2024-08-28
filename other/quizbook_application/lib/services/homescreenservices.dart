import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizbook_application/models/homescreenmodel.dart';

class apiservices{
  final String _baseurl = "https://quizbook-api.rudraithub.com/std";
  Future<List<Datum>> fetchStdser() async{
    final Response = await http.get(Uri.parse('$_baseurl'));
    if (Response.statusCode==200) {
      final List<dynamic> data = json.decode(Response.body)['data'];
      return data.map((json)=>Datum.fromJson(json)).toList();
    }
    else
    {
      throw Exception("Faild to Server");
    }
  }
  // final String url = ""
}