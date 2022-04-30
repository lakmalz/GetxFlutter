class TodoTable{
  static const String tableName = 'todo';
  static const String key = 'key';
  static const String event = 'event_name';

  static const String createQuery = '''
    CREATE TABLE IF NOT EXISTS ${TodoTable.tableName} (
    ${TodoTable.key} INTEGER PRIMARY KEY AUTOINCREMENT,
    ${TodoTable.event} TEXT NOT NULL
    )
    ''';
}