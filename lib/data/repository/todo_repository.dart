import 'package:get/get.dart';
import 'package:getxflutter/data/local_db/entity_mapper.dart';
import 'package:getxflutter/data/local_db/table/todo_table.dart';
import 'package:getxflutter/data/model/todo_model.dart';
import 'package:getxflutter/services/storage_service.dart';
import 'package:sqflite/sqflite.dart';

class TodoRepository{
  TodoRepository({required this.entityMapper}){
    db = Get.find<StorageService>().database;
  }

  late Database db;
  EntityMapper entityMapper;

  Future<int> insert(TodoModel todoModel) async{
    final i = await db.insert(TodoTable.tableName, entityMapper.toSqlMapFromTodoModel(todoModel));
    return i;
  }

  Future<List<TodoModel>> getAll() async {
    final List<Map<String, dynamic>> rows =
        await db.query(TodoTable.tableName);
    return [for (var row in rows) entityMapper.fromSqlMapToColorModel(row)];
  }
}