import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({this.message});
  final String? message;

  @override
  List<Object> get props => [message!];
}

// General failures
class SocketFailure extends Failure {}

class ServerFailure extends Failure {
  const ServerFailure({super.message});
}

class CustomFailure extends Failure {
  const CustomFailure({super.message});
}
