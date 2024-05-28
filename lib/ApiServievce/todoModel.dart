// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'dart:convert';

List<TodoModel> todoModelFromJson(String str) => List<TodoModel>.from(json.decode(str).map((x) => TodoModel.fromJson(x)));

String todoModelToJson(List<TodoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TodoModel {
  String? title;
  String? dec;
  String? avatar;
  String? id;

  TodoModel({
    this.title,
    this.dec,
    this.avatar,
    this.id,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
    title: json["title"],
    dec: json["dec"],
    avatar: json["avatar"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "dec": dec,
    "avatar": avatar,
    "id": id,
  };
}
