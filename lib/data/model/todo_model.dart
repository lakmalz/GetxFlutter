import 'package:getxflutter/data/local_db/table/todo_table.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class TodoModel {

  TodoModel({ this.id,this.title, this.creationDate, this.isChecked = false});

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);
  Map<String, dynamic> toJson() => _$TodoModelToJson(this);

  final int? id;
  final String? title;
  final String? creationDate;
  final bool isChecked;

  Map<String, dynamic> toSqlMap(TodoModel model){
    return <String , dynamic>{
      TodoTable.key: model.id,
      TodoTable.event: model.title
    };
  }

  TodoModel fromSqlMap(Map<String, dynamic> maps){
    return TodoModel(
      id:maps[TodoTable.key],
      title:maps[TodoTable.event]
    );
  }
}