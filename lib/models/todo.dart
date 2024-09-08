class Todo {
  String id;
  String title;
  String description;
  bool isCompleted;
  Todo(
      {required this.title,
      required this.id,
      required this.description,
      this.isCompleted = false});
}
