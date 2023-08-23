class UserNotAuthenticatedException implements Exception {
  final String message;

  UserNotAuthenticatedException(this.message);

  @override
  String toString() => 'UserNotAuthenticatedException: $message';
}
