import 'package:flutter/material.dart';

import '../domain/entities/ai_feedback.dart';

/// Card displaying AI feedback on the user's answer.
///
/// Shows score/strengths/gaps/modelAnswer ONLY when type == 'feedback'.
/// Always shows nextQuestion regardless of type (Fix 4).
class FeedbackCard extends StatelessWidget {
  final AiFeedback feedback;

  const FeedbackCard({super.key, required this.feedback});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Show detailed feedback only for 'feedback' type
          if (feedback.type == 'feedback') ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.primaryContainer.withValues(alpha: 0.7),
                    colorScheme.tertiaryContainer.withValues(alpha: 0.5),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Score badge
                  if (feedback.score != null)
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: _scoreColor(feedback.score!),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                size: 16,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${feedback.score}/5',
                                style: theme.textTheme.labelLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Feedback',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  if (feedback.score != null) const SizedBox(height: 16),

                  // Strengths
                  if (feedback.strengths != null &&
                      feedback.strengths!.isNotEmpty) ...[
                    _FeedbackSection(
                      icon: Icons.check_circle_rounded,
                      iconColor: const Color(0xFF4CAF50),
                      title: 'Strengths',
                      content: feedback.strengths!,
                    ),
                    const SizedBox(height: 12),
                  ],

                  // Gaps
                  if (feedback.gaps != null && feedback.gaps!.isNotEmpty) ...[
                    _FeedbackSection(
                      icon: Icons.info_rounded,
                      iconColor: const Color(0xFFFF9800),
                      title: 'Areas to Improve',
                      content: feedback.gaps!,
                    ),
                    const SizedBox(height: 12),
                  ],

                  // Model answer
                  if (feedback.modelAnswer != null &&
                      feedback.modelAnswer!.isNotEmpty)
                    _FeedbackSection(
                      icon: Icons.lightbulb_rounded,
                      iconColor: const Color(0xFF2196F3),
                      title: 'Ideal Answer',
                      content: feedback.modelAnswer!,
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _scoreColor(int score) {
    if (score >= 4) return const Color(0xFF4CAF50);
    if (score >= 3) return const Color(0xFFFF9800);
    return const Color(0xFFF44336);
  }
}

class _FeedbackSection extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String content;

  const _FeedbackSection({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
