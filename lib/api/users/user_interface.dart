import './user_response.dart';

abstract class UserInterface {
  Future<UserResponse> signup(String email, String password);

  Future<UserResponse> login(String email, String password);

  Future<void> logout();

  Future<void> logoutAllAccounts();

  Future<UserResponse> getProfile();

  Future<UserResponse> updateAccount();

  Future<UserResponse> deleteAccount();

  Future<void> uploadProfileImage();

  Future<void> deleteProfileImage();
}
