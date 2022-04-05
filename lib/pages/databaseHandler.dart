import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:firstfluttercs/pages/manageMalaModel.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'mala.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE malas(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL,price INTEGER NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertMala(List<ManageMala> malas) async {
    int result = 0;
    final Database db = await initializeDB();
    for (var mala in malas) {
      result = await db.insert('malas', mala.toMap());
    }
    return result;
  }

  Future<List<ManageMala>> retrieveMala() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('malas');
    return queryResult.map((e) => ManageMala.fromMap(e)).toList();
  }

  Future<void> deleteMala(int id) async {
    final db = await initializeDB();
    await db.delete(
      'malas',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
