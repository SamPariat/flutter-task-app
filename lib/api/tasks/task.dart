class Task {
  final String description;
  final bool completed;
  final String author;
  final String id;
  final String createdAt;
  final String updatedAt;

  Task({
    required this.description,
    required this.completed,
    required this.author,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });
}
