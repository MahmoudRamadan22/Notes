import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final int color;
  NoteModel(
    this.color, {
    required this.title,
    required this.content,
    required this.date,
  });
}
