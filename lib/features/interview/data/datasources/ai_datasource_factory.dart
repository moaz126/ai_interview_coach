import 'package:dio/dio.dart';

import '../../../../core/constants/ai_provider_config.dart';
import 'ai_remote_datasource.dart';
import 'providers/gemini_datasource.dart';
import 'providers/groq_datasource.dart';

class AiDatasourceFactory {
  static AiRemoteDataSource create(AiProviderConfig config, Dio dio) {
    switch (config.type) {
      case AiProviderType.groq:
        return GroqDataSource(dio: dio, config: config);
      case AiProviderType.gemini:
        return GeminiDataSource(dio: dio, config: config);
    }
  }
}
