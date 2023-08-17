import './user_response.dart';
import './user_interface.dart';

class UserApi implements UserInterface {
  final String baseUrl = "http://localhost:4040/users/";

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
  Future<UserResponse> login() async {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> logoutAllAccounts() async {
    // TODO: implement logoutAllAccounts
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> signup() async {
    // TODO: implement signup
    throw UnimplementedError();
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
