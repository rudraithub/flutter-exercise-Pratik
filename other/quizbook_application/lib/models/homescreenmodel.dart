// To parse this JSON data, do
//
//     final homescreenModel = homescreenModelFromJson(jsonString);

import 'dart:convert';

HomescreenModel homescreenModelFromJson(String str) => HomescreenModel.fromJson(json.decode(str));

String homescreenModelToJson(HomescreenModel data) => json.encode(data.toJson());

class HomescreenModel {
    int? status;
    List<Datum>? data;
    String? message;

    HomescreenModel({
        this.status,
        this.data,
        this.message,
    });

    factory HomescreenModel.fromJson(Map<String, dynamic> json) => HomescreenModel(
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
    int? stdid;
    String? std;
    List<Subject>? subjects;

    Datum({
        this.stdid,
        this.std,
        this.subjects,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        stdid: json["stdid"],
        std: json["std"],
        subjects: json["Subjects"] == null ? [] : List<Subject>.from(json["Subjects"]!.map((x) => Subject.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "stdid": stdid,
        "std": std,
        "Subjects": subjects == null ? [] : List<dynamic>.from(subjects!.map((x) => x.toJson())),
    };
}

class Subject {
    int? subid;
    String? subjectName;
    String? img;

    Subject({
        this.subid,
        this.subjectName,
        this.img,
    });

    factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        subid: json["subid"],
        subjectName: json["subjectName"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "subid": subid,
        "subjectName": subjectName,
        "img": img,
    };
}
