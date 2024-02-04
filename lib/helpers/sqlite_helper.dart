import 'package:qwer_english/models/phrase.dart';
import 'package:sqflite/sqflite.dart';

class SqliteHelper {
  final Database db;
  SqliteHelper({required this.db});

  Future<List<Phrase>> fetchAll() async {
    List<Map<String, dynamic>> raw =
        await db.query('phrase', where: 'isDone = ?', whereArgs: [0]);
    if (raw.isNotEmpty) {
      return raw.map((e) => Phrase.fromMap(e)).toList();
    }
    return [];
  }

  Future<void> update(Phrase phrase) async {
    await db.update('phrase', phrase.toMap(),
        where: 'id = ?', whereArgs: [phrase.id]);
  }
}
