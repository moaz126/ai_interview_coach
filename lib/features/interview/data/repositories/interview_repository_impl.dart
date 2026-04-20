import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/ai_feedback.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/interview_session.dart';
import '../../domain/repositories/interview_repository.dart';
import '../datasources/gemini_remote_datasource.dart';
import '../datasources/session_local_datasource.dart';

/// Concrete implementation of [InterviewRepository].
///
/// Delegates to remote (Gemini API) and local (Hive) data sources,
/// catching exceptions and mapping them to domain [Failure] objects.
class InterviewRepositoryImpl implements InterviewRepository {
  final GeminiRemoteDataSource _remoteDataSource;
  final SessionLocalDataSource _localDataSource;

  InterviewRepositoryImpl({
    required GeminiRemoteDataSource remoteDataSource,
    required SessionLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<({Failure? failure, AiFeedback? feedback})> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  }) async {
    try {
      final model = await _remoteDataSource.sendMessage(
        topic: topic,
        difficulty: difficulty,
        history: history,
        userMessage: userMessage,
      );

      final feedback = AiFeedback(
        type: model.type,
        nextQuestion: model.nextQuestion,
        score: model.score,
        strengths: model.strengths,
        gaps: model.gaps,
        modelAnswer: model.modelAnswer,
      );

      return (failure: null, feedback: feedback);
    } on DioException catch (e) {
      return (failure: mapDioExceptionToFailure(e), feedback: null);
    } on ServerException catch (e) {
      return (failure: ServerFailure(e.message), feedback: null);
    } catch (e) {
      return (
        failure: ServerFailure('Unexpected error: $e'),
        feedback: null,
      );
    }
  }

  @override
  Future<({Failure? failure})> saveSession(InterviewSession session) async {
    try {
      await _localDataSource.saveSession(session);
      return (failure: null);
    } on CacheException catch (e) {
      return (failure: CacheFailure(e.message));
    } catch (e) {
      return (failure: CacheFailure('Failed to save session: $e'));
    }
  }

  @override
  Future<({Failure? failure, List<InterviewSession>? sessions})>
      getSessionHistory() async {
    try {
      final sessions = await _localDataSource.getSessionHistory();
      return (failure: null, sessions: sessions);
    } on CacheException catch (e) {
      return (failure: CacheFailure(e.message), sessions: null);
    } catch (e) {
      return (failure: CacheFailure('Failed to load history: $e'), sessions: null);
    }
  }
}
