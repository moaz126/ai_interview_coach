import '../../../../core/error/failures.dart';
import '../entities/interview_session.dart';
import '../repositories/interview_repository.dart';

/// Use case for saving a completed interview session.
class SaveSessionUseCase {
  final InterviewRepository _repository;

  SaveSessionUseCase(this._repository);

  Future<({Failure? failure})> call(InterviewSession session) {
    return _repository.saveSession(session);
  }
}
