import 'package:getxflutter/data/local_db/table/todo_table.dart';
import 'package:getxflutter/data/model/todo_model.dart';

class EntityMapper{

  Map<String, dynamic> toSqlMapFromTodoModel(TodoModel object){
    final todo = <String, dynamic>{
      TodoTable.event:object.title
    };
    return todo;
  }

   TodoModel fromSqlMapToColorModel(Map<String, dynamic> map) {
    return TodoModel(
        id: map[TodoTable.key],
        title: map[TodoTable.event]);
  }
}