import './task.dart';

abstract class TaskInterface {
  Future<Task> createNewTask();

  Future<List<Task>> getTasks();

  Future<Task> getTaskById(String taskId);

  Future<Task?> updateTask(String taskId, String? description, bool? completed);

  Future<Task?> deleteTask(String taskId);
}
