import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/task.dart';
import './task_interface.dart';
import '../../exceptions/bad_request_exception.dart';
import '../../exceptions/internal_server_error_exception.dart';
import '../../exceptions/task_not_found_exception.dart';

class TaskApi implements TaskInterface {
  final String baseUrl = 'http://localhost:4040/tasks';

  @override
  Future<Task> createNewTask(String description, bool completed) async {
    try {
      final response = await http.post(
        Uri.http(baseUrl),
        body: json.encode({
          'description': description,
          'completed': completed,
        }),
      );

      if (response.statusCode == 400) {
        throw BadRequestException('Invalid body');
      }

      return json.decode(response.body);
    } on BadRequestException catch (bre) {
      return Future.error(bre.message);
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<Task> deleteTask(String taskId) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Task> getTaskById(String taskId) async {
    try {
      final response = await http.get(
        Uri.http(
          baseUrl,
          '/$taskId',
        ),
      );

      if (response.statusCode == 404) {
        throw TaskNotFoundException('Task doesn\'t exist');
      } else if (response.statusCode == 500) {
        throw InternalServerErrorException('Server error');
      }

      return json.decode(response.body);
    } on TaskNotFoundException catch (tnfe) {
      return Future.error(tnfe.message);
    } on InternalServerErrorException catch (isee) {
      return Future.error(isee.message);
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Task>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<Task> updateTask(String taskId, String? description, bool? completed) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
