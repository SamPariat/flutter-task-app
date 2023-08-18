import './task.dart';
import './task_interface.dart';

class TaskApi implements TaskInterface {
  final String baseUrl = 'http://localhost:4040/tasks';

  @override
  Future<Task> createNewTask() {
    // TODO: implement createNewTask
    throw UnimplementedError();
  }

  @override
  Future<Task?> deleteTask(String taskId) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Task> getTaskById(String taskId) {
    // TODO: implement getTaskById
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<Task?> updateTask(
      String taskId, String? description, bool? completed) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
