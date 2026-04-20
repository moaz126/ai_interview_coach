import 'dart:convert';

/// Utility to safely parse JSON from Gemini responses that may be
/// wrapped in markdown code blocks.
class JsonSanitizer {
  JsonSanitizer._();

  /// Attempts to parse a raw string into a JSON map.
  ///
  /// Steps:
  /// 1. Trim whitespace
  /// 2. Strip ```json ... ``` or ``` ... ``` markdown wrappers
  /// 3. Extract first JSON object using regex
  /// 4. Attempt jsonDecode — return null on any failure
  static Map<String, dynamic>? tryParse(String raw) {
    try {
      var cleaned = raw.trim();

      // Strip markdown code block wrappers
      cleaned = cleaned.replaceAll(
        RegExp(r'```(?:json)?\s*', caseSensitive: false),
        '',
      );
      cleaned = cleaned.replaceAll('```', '');
      cleaned = cleaned.trim();

      // Extract first JSON object
      final match = RegExp(r'\{[\s\S]*\}').firstMatch(cleaned);
      if (match == null) return null;

      final jsonString = match.group(0)!;
      final decoded = jsonDecode(jsonString);

      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}
