import 'package:dio/dio.dart';

import 'failures.dart';

/// Exception thrown by remote data sources.
class ServerException implements Exception {
  final String message;
  const ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}

/// Exception thrown by local data sources.
class CacheException implements Exception {
  final String message;
  const CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

/// Maps [DioException] types to domain [Failure] objects.
Failure mapDioExceptionToFailure(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
      return const TimeoutFailure('Connection timed out. Please try again.');
    case DioExceptionType.receiveTimeout:
      return const TimeoutFailure(
        'The AI is taking too long to respond. Please try again.',
      );
    case DioExceptionType.connectionError:
      return const NetworkFailure(
        'No internet connection. Please check your network.',
      );
    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      if (statusCode == 429) {
        return const RateLimitFailure(
          'Too many requests. Please wait a moment and try again.',
        );
      }
      return ServerFailure(
        'Server error (${statusCode ?? 'unknown'}). Please try again.',
      );
    default:
      return ServerFailure(e.message ?? 'An unexpected error occurred.');
  }
}
