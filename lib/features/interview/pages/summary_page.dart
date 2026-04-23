import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../domain/entities/interview_session.dart';

class SummaryPage extends HookWidget {
  final InterviewSession session;
  const SummaryPage({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final scorePercent = (session.avgScore / 5 * 100).round();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              cs.surface,
              cs.primaryContainer.withValues(alpha: 0.15),
              cs.tertiaryContainer.withValues(alpha: 0.1),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                // Trophy icon
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [cs.primary, cs.tertiary]),
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: cs.primary.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.emoji_events_rounded,
                    size: 56,
                    color: cs.onPrimary,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Interview Complete!',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${session.topic} • ${session.difficulty}',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: cs.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 32),

                // Score circle
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: cs.outlineVariant.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: CircularProgressIndicator(
                                value: session.avgScore / 5,
                                strokeWidth: 10,
                                backgroundColor: cs.surfaceContainerHighest,
                                valueColor: AlwaysStoppedAnimation(
                                  _scoreColor(session.avgScore),
                                ),
                                strokeCap: StrokeCap.round,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '$scorePercent%',
                                  style: theme.textTheme.headlineLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: _scoreColor(session.avgScore),
                                      ),
                                ),
                                Text(
                                  'Score',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: cs.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Average: ${session.avgScore.toStringAsFixed(1)} / 5.0',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _scoreLabel(session.avgScore),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: cs.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Stats row
                Row(
                  children: [
                    Expanded(
                      child: _StatCard(
                        icon: Icons.quiz_rounded,
                        label: 'Questions',
                        value:
                            '${session.messages.where((m) => m.role == "assistant").length}',
                        cs: cs,
                        theme: theme,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        icon: Icons.chat_rounded,
                        label: 'Answers',
                        value:
                            '${session.messages.where((m) => m.role == "user").length}',
                        cs: cs,
                        theme: theme,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                // Back button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: FilledButton.icon(
                    onPressed: () =>
                        Navigator.of(context).popUntil((r) => r.isFirst),
                    icon: const Icon(Icons.home_rounded),
                    label: const Text('Back to Home'),
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _scoreColor(double s) {
    if (s >= 4) return const Color(0xFF4CAF50);
    if (s >= 3) return const Color(0xFFFF9800);
    return const Color(0xFFF44336);
  }

  String _scoreLabel(double s) {
    if (s >= 4.5) return 'Outstanding performance!';
    if (s >= 4) return 'Great job! Very solid answers.';
    if (s >= 3) return 'Good effort. Keep practicing!';
    if (s >= 2) return 'Room for improvement. Review key concepts.';
    return 'Needs work. Focus on fundamentals.';
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label, value;
  final ColorScheme cs;
  final ThemeData theme;
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.cs,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: cs.primary, size: 24),
          const SizedBox(height: 8),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
