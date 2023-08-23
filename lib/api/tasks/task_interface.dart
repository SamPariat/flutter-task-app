import '../../models/task.dart';

abstract class TaskInterface {
  Future<Task> createNewTask(String description, bool completed);

  Future<List<Task>> getTasks();

  Future<Task> getTaskById(String taskId);

  Future<Task> updateTask(String taskId, String? description, bool? completed);

  Future<Task> deleteTask(String taskId);
}
