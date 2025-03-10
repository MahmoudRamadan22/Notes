class NoteModel {
  final String title;
  final String content;
  final DateTime date;
  final int color;
  NoteModel(
    this.color, {
    required this.title,
    required this.content,
    required this.date,
  });
}
