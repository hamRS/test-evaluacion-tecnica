import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;
  final int? code;
  final int? status;

  const Failure({
    this.message,
    this.code,
    this.status,
  });
}

class ServerFailure extends Failure {
  final String? message;
  final int? code;
  final int? status;

  const ServerFailure({this.message, this.code, this.status})
      : super(
          code: code,
          message: message,
          status: status,
        );

  @override
  List<Object?> get props => throw UnimplementedError();
}
