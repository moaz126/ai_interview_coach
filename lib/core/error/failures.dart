import 'package:equatable/equatable.dart';

/// Base failure class for the domain layer.
abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure(super.message);
}

class RateLimitFailure extends Failure {
  const RateLimitFailure(super.message);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}
