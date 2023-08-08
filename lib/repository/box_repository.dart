import 'package:hive/hive.dart';
import 'package:hive_crud/models/notes.dart';

class BoxRepository {
  static const String boxName = "CRUD";

  static openBox() async => await Hive.openBox<Note>(boxName);

  static Box getBox() => Hive.box<Note>(boxName);

  static closeBox() async => await Hive.box(boxName).close();
}
