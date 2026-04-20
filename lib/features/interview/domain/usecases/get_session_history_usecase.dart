import '../../../../core/error/failures.dart';
import '../entities/interview_session.dart';
import '../repositories/interview_repository.dart';

/// Use case for retrieving session history from local storage.
class GetSessionHistoryUseCase {
  final InterviewRepository _repository;

  GetSessionHistoryUseCase(this._repository);

  Future<({Failure? failure, List<InterviewSession>? sessions})> call() {
    return _repository.getSessionHistory();
  }
}
