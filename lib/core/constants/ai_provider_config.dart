enum AiProviderType { groq, gemini }

class AiProviderConfig {
  final String baseUrl;
  final String model;
  final String apiKey;
  final AiProviderType type;

  const AiProviderConfig({
    required this.baseUrl,
    required this.model,
    required this.apiKey,
    required this.type,
  });

  // Static configs:
  factory AiProviderConfig.groq() => const AiProviderConfig(
    baseUrl: 'https://api.groq.com/openai/v1',
    model: 'gemma2-9b-it',
    apiKey: String.fromEnvironment('AI_API_KEY'),
    type: AiProviderType.groq,
  );

  factory AiProviderConfig.gemini() => const AiProviderConfig(
    baseUrl: 'https://generativelanguage.googleapis.com/v1beta',
    model: 'gemini-3-flash-preview',
    apiKey: String.fromEnvironment('AI_API_KEY'),
    type: AiProviderType.gemini,
  );
}
