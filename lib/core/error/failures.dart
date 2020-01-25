import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super(properties);
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class UnknownFailure extends Failure {
  final dynamic error;

  UnknownFailure({@required this.error});
}
