import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {

  TodoModel({this.userId, this.id,this.title, this.completed = false});

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TodoModelToJson(this);

  final int? userId;
  final int? id;
  final String? title;
  final bool completed;
}