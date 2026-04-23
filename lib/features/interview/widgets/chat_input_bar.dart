import 'package:flutter/material.dart';

/// Chat input bar with text field and send button.
class ChatInputBar extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;
  final VoidCallback onSend;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.isLoading,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 8,
        top: 12,
        bottom: MediaQuery.of(context).padding.bottom + 12,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          top: BorderSide(color: colorScheme.outlineVariant.withValues(alpha: 0.3)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                controller: controller,
                enabled: !isLoading,
                maxLines: 4,
                minLines: 1,
                textInputAction: TextInputAction.send,
                onSubmitted: isLoading ? null : (_) => onSend(),
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurface,
                ),
                decoration: InputDecoration(
                  hintText: isLoading
                      ? 'AI is thinking...'
                      : 'Type your answer...',
                  hintStyle: TextStyle(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: IconButton.filled(
              onPressed: isLoading ? null : onSend,
              style: IconButton.styleFrom(
                backgroundColor: isLoading
                    ? colorScheme.surfaceContainerHighest
                    : colorScheme.primary,
                foregroundColor: isLoading
                    ? colorScheme.onSurfaceVariant
                    : colorScheme.onPrimary,
                padding: const EdgeInsets.all(12),
              ),
              icon: const Icon(Icons.send_rounded, size: 22),
            ),
          ),
        ],
      ),
    );
  }
}
