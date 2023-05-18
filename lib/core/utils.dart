import 'dart:io';

import 'error/failures.dart';

const String socketFailureMessage = 'Please check your network conections';

class Utils {
  static String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case SocketFailure:
        return socketFailureMessage;
      case CustomFailure:
        return failure.message ?? 'Null message pass';
      case ServerFailure:
        return "Server failure:: ${failure.message ?? 'Null message pass'}";
      default:
        return 'Unexpected error';
    }
  }

  static Failure catchExaptions(Object e) {
    switch (e.runtimeType) {
      case SocketException:
        return SocketFailure();
      default:
        return ServerFailure(message: e.toString());
    }
  }
}
