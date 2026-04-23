import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'interview_page.dart';

/// Setup page for configuring an interview session.
///
/// Allows selecting topic, difficulty, and session length before starting.
class SetupPage extends HookWidget {
  const SetupPage({super.key});

  static const _topics = [
    'Flutter/Dart',
    'DSA & Algorithms',
    'System Design',
    'Behavioral',
  ];

  static const _difficulties = ['Junior', 'Mid-level', 'Senior'];
  static const _sessionLengths = [5, 10, 15];

  @override
  Widget build(BuildContext context) {
    final selectedTopic = useState<String?>(null);
    final selectedDifficulty = useState<String?>(null);
    final selectedLength = useState<int>(10);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final canStart =
        selectedTopic.value != null && selectedDifficulty.value != null;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorScheme.surface,
              colorScheme.primaryContainer.withValues(alpha: 0.15),
              colorScheme.tertiaryContainer.withValues(alpha: 0.1),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),

                // Header
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [colorScheme.primary, colorScheme.tertiary],
                      ),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.psychology_rounded,
                      size: 48,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: Text(
                    'AI Interview Coach',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    'Practice technical interviews with AI feedback',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Topic selection
                _SectionHeader(
                  icon: Icons.topic_rounded,
                  title: 'Interview Topic',
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: _topics.map((topic) {
                    final isSelected = selectedTopic.value == topic;
                    return _SelectionChip(
                      label: topic,
                      isSelected: isSelected,
                      onTap: () => selectedTopic.value = topic,
                    );
                  }).toList(),
                ),
                const SizedBox(height: 32),

                // Difficulty selection
                _SectionHeader(
                  icon: Icons.bar_chart_rounded,
                  title: 'Difficulty Level',
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: _difficulties.map((diff) {
                    final isSelected = selectedDifficulty.value == diff;
                    return _SelectionChip(
                      label: diff,
                      isSelected: isSelected,
                      onTap: () => selectedDifficulty.value = diff,
                    );
                  }).toList(),
                ),
                const SizedBox(height: 32),

                // Session length selection
                _SectionHeader(
                  icon: Icons.timer_rounded,
                  title: 'Session Length',
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: _sessionLengths.map((len) {
                    final isSelected = selectedLength.value == len;
                    return _SelectionChip(
                      label: '$len questions',
                      isSelected: isSelected,
                      onTap: () => selectedLength.value = len,
                    );
                  }).toList(),
                ),
                const SizedBox(height: 48),

                // Start button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    child: FilledButton(
                      onPressed: canStart
                          ? () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => InterviewPage(
                                    topic: selectedTopic.value!,
                                    difficulty: selectedDifficulty.value!,
                                    sessionLength: selectedLength.value,
                                  ),
                                ),
                              );
                            }
                          : null,
                      style: FilledButton.styleFrom(
                        backgroundColor: colorScheme.primary,
                        foregroundColor: colorScheme.onPrimary,
                        disabledBackgroundColor:
                            colorScheme.surfaceContainerHighest,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: canStart ? 4 : 0,
                        shadowColor: colorScheme.primary.withValues(alpha: 0.4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 24,
                            color: canStart
                                ? colorScheme.onPrimary
                                : colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Start Interview',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: canStart
                                  ? colorScheme.onPrimary
                                  : colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
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
}

class _SectionHeader extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SectionHeader({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 20, color: theme.colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _SelectionChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectionChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected
                    ? colorScheme.primary
                    : colorScheme.outlineVariant.withValues(alpha: 0.5),
                width: isSelected ? 2 : 1,
              ),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
