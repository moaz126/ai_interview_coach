/// Constants for the Google Gemini API.
class ApiConstants {
  ApiConstants._();

  /// API key injected at build time via --dart-define=GEMINI_API_KEY=...
  static const apiKey = String.fromEnvironment('GEMINI_API_KEY');

  /// Base URL for the Generative Language API.
  static const baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/';

  /// Path for the generateContent endpoint.
  static const generateContentPath =
      'gemma2-9b-it:generateContent';

  /// Full endpoint URL with API key.
  static String get generateContentUrl =>
      '$baseUrl$generateContentPath?key=$apiKey';
}
