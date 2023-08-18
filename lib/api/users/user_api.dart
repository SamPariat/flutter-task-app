import 'dart:convert';

import 'package:http/http.dart' as http;

import './user_interface.dart';
import './user_response.dart';
import '../exceptions/bad_request_exception.dart';
import '../exceptions/internal_server_error_exception.dart';
import '../exceptions/user_not_authenticated_exception.dart';
import '../exceptions/user_not_found_exception.dart';

class UserApi implements UserInterface {
  final String baseUrl = 'http://localhost:4040/users';

  @override
  Future<UserResponse> deleteAccount() async {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProfileImage() async {
    // TODO: implement deleteProfileImage
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> getProfile() async {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.http(
          baseUrl,
          '/login',
        ),
        body: json.encode({
          email: email,
          password: password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 400) {
        throw UserNotFoundException('Invalid body');
      }

      return json.decode(response.body);
    } on UserNotFoundException catch (unfe) {
      return Future.error(unfe.message);
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await http.post(
        Uri.http(
          baseUrl,
          '/logout',
        ),
        headers: {},
      );

      if (response.statusCode == 401) {
        throw UserNotAuthenticatedException('Not authenticated');
      } else if (response.statusCode == 500) {
        throw InternalServerErrorException('Server error');
      }

      return json.decode(response.body);
    } on UserNotAuthenticatedException catch (unae) {
      return Future.error(unae.message);
    } on InternalServerErrorException catch (isee) {
      return Future.error(isee.message);
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<void> logoutAllAccounts() async {
    // TODO: implement logoutAllAccounts
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> signup(String email, String password) async {
    try {
      final response = await http.post(
        Uri.http(baseUrl),
        body: json.encode({
          email: email,
          password: password,
        }),
      );

      if (response.statusCode == 400) {
        throw BadRequestException('Bad request');
      }

      return json.decode(response.body);
    } on BadRequestException catch (bre) {
      return Future.error(bre.message);
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<UserResponse> updateAccount() async {
    // TODO: implement updateAccount
    throw UnimplementedError();
  }

  @override
  Future<void> uploadProfileImage() async {
    // TODO: implement uploadProfileImage
    throw UnimplementedError();
  }
}
