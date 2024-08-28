// To parse this JSON data, do
//
//     final chapterscreenModel = chapterscreenModelFromJson(jsonString);

import 'dart:convert';

ChapterscreenModel chapterscreenModelFromJson(String str) => ChapterscreenModel.fromJson(json.decode(str));

String chapterscreenModelToJson(ChapterscreenModel data) => json.encode(data.toJson());

class ChapterscreenModel {
    int? status;
    List<Datum>? data;
    String? message;

    ChapterscreenModel({
        this.status,
        this.data,
        this.message,
    });

    factory ChapterscreenModel.fromJson(Map<String, dynamic> json) => ChapterscreenModel(
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
    int? chapterno;
    String? content;
    int? chapterid;
    String? teacher;
    int? que;
    String? minute;

    Datum({
        this.chapterno,
        this.content,
        this.chapterid,
        this.teacher,
        this.que,
        this.minute,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        chapterno: json["chapterno"],
        content: json["content"],
        chapterid: json["chapterid"],
        teacher: json["teacher"],
        que: json["que"],
        minute: json["minute"],
    );

    Map<String, dynamic> toJson() => {
        "chapterno": chapterno,
        "content": content,
        "chapterid": chapterid,
        "teacher": teacher,
        "que": que,
        "minute": minute,
    };
}
