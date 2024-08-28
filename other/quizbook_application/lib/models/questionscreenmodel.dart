// To parse this JSON data, do
//
//     final questionscreenModel = questionscreenModelFromJson(jsonString);

import 'dart:convert';

QuestionscreenModel questionscreenModelFromJson(String str) => QuestionscreenModel.fromJson(json.decode(str));

String questionscreenModelToJson(QuestionscreenModel data) => json.encode(data.toJson());

class QuestionscreenModel {
    int? status;
    List<Datum>? data;
    String? message;

    QuestionscreenModel({
        this.status,
        this.data,
        this.message,
    });

    factory QuestionscreenModel.fromJson(Map<String, dynamic> json) => QuestionscreenModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    List<String>? option;
    int? queid;
    int? stdid;
    int? subid;
    int? chapterid;
    int? questionNo;
    String? question;
    int? rightAns;

    Datum({
        this.option,
        this.queid,
        this.stdid,
        this.subid,
        this.chapterid,
        this.questionNo,
        this.question,
        this.rightAns,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        option: json["Option"] == null ? [] : List<String>.from(json["Option"]!.map((x) => x)),
        queid: json["queid"],
        stdid: json["stdid"],
        subid: json["subid"],
        chapterid: json["chapterid"],
        questionNo: json["question_no"],
        question: json["question"],
        rightAns: json["rightAns"],
    );

    Map<String, dynamic> toJson() => {
        "Option": option == null ? [] : List<dynamic>.from(option!.map((x) => x)),
        "queid": queid,
        "stdid": stdid,
        "subid": subid,
        "chapterid": chapterid,
        "question_no": questionNo,
        "question": question,
        "rightAns": rightAns,
    };
}
