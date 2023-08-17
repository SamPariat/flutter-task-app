import './user_response.dart';

abstract class UserInterface {
  Future<UserResponse> signup();

  Future<UserResponse> login();

  Future<void> logout();

  Future<void> logoutAllAccounts();

  Future<UserResponse> getProfile();

  Future<UserResponse> updateAccount();

  Future<UserResponse> deleteAccount();

  Future<void> uploadProfileImage();

  Future<void> deleteProfileImage();
}
