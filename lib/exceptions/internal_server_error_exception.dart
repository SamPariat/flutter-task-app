class InternalServerErrorException implements Exception {
  final String message;

  InternalServerErrorException(this.message);

  @override
  String toString() => 'InternalServerErrorException: $message';
}
