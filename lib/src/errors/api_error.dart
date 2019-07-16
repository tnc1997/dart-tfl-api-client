class ApiError extends Error {
  final int statusCode;

  final String message;

  ApiError(this.statusCode, this.message);

  @override
  String toString() {
    return '{statusCode: $statusCode, message: $message}';
  }
}
