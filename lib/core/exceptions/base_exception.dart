class CustomException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  CustomException(this.message, this.stackTrace);

  @override
  String toString() => "CustomException: $message";

  void handleError() {
    print(toString());
    if (stackTrace != null) {
      // Print the stack trace to help identify where the error was thrown
      print('StackTrace: $stackTrace');
    }
    // Rethrowing the exception for further handling if needed.
  }
}
