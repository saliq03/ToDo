import 'package:flutter/material.dart';

import '../../core/configs/constants/priority.dart';

class TaskModel{
  final String id;
  final String title;
  final String description;
  final String date;
  final String time;
  final String priority;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.priority,}
  );

  factory TaskModel.fromJson(Map<String, dynamic> json){
    return TaskModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        date:json['date'],
        time: json['time'],
        priority: json['priority'], );
  }

  Map<String,dynamic> toJson(){
    return {
      'id':id,
      'title':title,
      'description':description,
      'date':date,
      'time':time,
      'priority':priority

    };
  }
}