import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/interview/bloc/interview_cubit.dart';
import '../../features/interview/data/datasources/gemini_remote_datasource.dart';
import '../../features/interview/data/datasources/session_local_datasource.dart';
import '../../features/interview/data/local/hive_interview_session.dart';
import '../../features/interview/data/repositories/interview_repository_impl.dart';
import '../../features/interview/domain/repositories/interview_repository.dart';
import '../../features/interview/domain/usecases/get_session_history_usecase.dart';
import '../../features/interview/domain/usecases/save_session_usecase.dart';
import '../../features/interview/domain/usecases/send_message_usecase.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Step 1 — External (Hive box)
  final box = await Hive.openBox<HiveInterviewSession>('sessions');
  sl.registerSingleton<Box<HiveInterviewSession>>(box);

  // Step 2 — Core (Dio)
  sl.registerLazySingleton<DioClient>(() => DioClient.instance);

  // Step 3 — DataSources
  sl.registerLazySingleton<GeminiRemoteDataSource>(
    () => GeminiRemoteDataSourceImpl(dio: sl<DioClient>()),
  );
  sl.registerLazySingleton<SessionLocalDataSource>(
    () => SessionLocalDataSourceImpl(box: sl<Box<HiveInterviewSession>>()),
  );

  // Step 4 — Repository
  sl.registerLazySingleton<InterviewRepository>(
    () => InterviewRepositoryImpl(
      remoteDataSource: sl<GeminiRemoteDataSource>(),
      localDataSource: sl<SessionLocalDataSource>(),
    ),
  );

  // Step 5 — UseCases
  sl.registerLazySingleton(() => SendMessageUseCase(sl<InterviewRepository>()));
  sl.registerLazySingleton(() => SaveSessionUseCase(sl<InterviewRepository>()));
  sl.registerLazySingleton(
      () => GetSessionHistoryUseCase(sl<InterviewRepository>()));

  // Step 6 — Cubit (registerFactory — NOT singleton, fresh state per session)
  sl.registerFactory(() => InterviewCubit(
        sendMessageUseCase: sl<SendMessageUseCase>(),
        saveSessionUseCase: sl<SaveSessionUseCase>(),
      ));
}
