import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure([this.message]);

  @override
  String toString() {
    return 'Failure: $message';
  }

  @override
  List<Object> get props => [];
}

class RecordNotFound extends Failure {
  final String? error;

  const RecordNotFound([this.error]) : super(error);
}

class RequestFailure extends Failure {
  final String? error;

  const RequestFailure([this.error]) : super(error);
}
