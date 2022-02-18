import 'package:getxflutter/data/model/todo_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo_list.g.dart';

@JsonSerializable()
class TodoListResponse {

  TodoListResponse();

  factory TodoListResponse.fromJson(Map<String, dynamic> json) => _$TodoListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TodoListResponseToJson(this);

  List<TodoModel>? accountTypes;

}