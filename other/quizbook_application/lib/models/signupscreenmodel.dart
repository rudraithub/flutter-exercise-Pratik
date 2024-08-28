// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    int? status;
    Data? data;
    String? message;

    SignupModel({
        this.status,
        this.data,
        this.message,
    });

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
        "message": message,
    };
}

class Data {
    int? id;
    String? userProfile;
    String? firstName;
    String? lastName;
    String? email;
    List<Gender>? gender;
    String? dob;
    String? mobileNumber;
    List<Gender>? profession;

    Data({
        this.id,
        this.userProfile,
        this.firstName,
        this.lastName,
        this.email,
        this.gender,
        this.dob,
        this.mobileNumber,
        this.profession,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userProfile: json["userProfile"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        gender: json["gender"] == null ? [] : List<Gender>.from(json["gender"]!.map((x) => Gender.fromJson(x))),
        dob: json["DOB"],
        mobileNumber: json["mobileNumber"],
        profession: json["profession"] == null ? [] : List<Gender>.from(json["profession"]!.map((x) => Gender.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userProfile": userProfile,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "gender": gender == null ? [] : List<dynamic>.from(gender!.map((x) => x.toJson())),
        "DOB": dob,
        "mobileNumber": mobileNumber,
        "profession": profession == null ? [] : List<dynamic>.from(profession!.map((x) => x.toJson())),
    };
}

class Gender {
    int? id;
    String? name;

    Gender({
        this.id,
        this.name,
    });

    factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        id: json["_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
    };
}
