import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todoapp/src/features/todo/domain/entities/task_model.dart';

class TaskDBHelper {
  static final TaskDBHelper instance = TaskDBHelper._init();

  static Database? _database;

  TaskDBHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('tasks.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const taskTable = '''
    CREATE TABLE tasks (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      isCompleted INTEGER NOT NULL
    )
    ''';

    await db.execute(taskTable);
  }

  Future<List<TaskModel>> getTasks() async {
    final db = await instance.database;
    var result = await db.query('tasks');
    return result.map((json) => TaskModel.fromJson(json)).toList();
  }

  Future<List<TaskModel>> getCompletedTasks() async {
    final db = await instance.database;
    var result = await db.query('tasks', where: "isCompleted == 1");
    return result.map((json) => TaskModel.fromJson(json)).toList();
  }

  Future<List<TaskModel>> getPendingTasks() async {
    final db = await instance.database;
    var result = await db.query('tasks', where: "isCompleted == 0");
    return result.map((json) => TaskModel.fromJson(json)).toList();
  }

  Future<void> insertTask(TaskModel task) async {
    final db = await instance.database;
    await db.insert('tasks', task.toJson());
  }
}
