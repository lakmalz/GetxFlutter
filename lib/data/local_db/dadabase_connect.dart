import 'package:getxflutter/data/local_db/table/todo_table.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnect {
  factory DatabaseConnect(){
    return _singleton;
  }

  DatabaseConnect._internal();
  static final DatabaseConnect _singleton = DatabaseConnect._internal();

  static const _databaseName = 'local_db_getx.db';
  static const _databaseVersion = 1;

  Database? _database;
 Future<Database?> get database async{
   if(_database != null) return _database;
   _database = await _initDatabase();
   return _database;
 }

 Future<Database> _initDatabase() async {
   final path = await getDatabasesPath();

    return openDatabase(
      join(path, _databaseName),
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
 }

 Future _onCreate(Database db, int version)async{
   var batch = db.batch();
   batch.execute(TodoTable.createQuery);
   return batch.commit();
 }

 Future _onUpgrade(Database db, int oldVersion, int newVersion) async {}

}