import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../bloc/interview_cubit.dart';
import '../bloc/interview_state.dart';
import '../domain/entities/chat_message.dart';
import '../widgets/chat_input_bar.dart';
import '../widgets/feedback_card.dart';
import '../widgets/message_bubble.dart';
import '../widgets/typing_indicator.dart';
import 'summary_page.dart';

class InterviewPage extends HookWidget {
  final String topic;
  final String difficulty;
  final int sessionLength;

  const InterviewPage({
    super.key,
    required this.topic,
    required this.difficulty,
    required this.sessionLength,
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final textController = useTextEditingController();
    final cubit = useMemoized(() => GetIt.instance<InterviewCubit>(), []);

    useEffect(() {
      cubit.init(
        topic: topic,
        difficulty: difficulty,
        sessionLength: sessionLength,
      );
      return cubit.close;
    }, []);

    return BlocProvider.value(
      value: cubit,
      child: _InterviewBody(
        topic: topic,
        difficulty: difficulty,
        sessionLength: sessionLength,
        scrollController: scrollController,
        textController: textController,
        cubit: cubit,
      ),
    );
  }
}

class _InterviewBody extends StatelessWidget {
  final String topic, difficulty;
  final int sessionLength;
  final ScrollController scrollController;
  final TextEditingController textController;
  final InterviewCubit cubit;

  const _InterviewBody({
    required this.topic,
    required this.difficulty,
    required this.sessionLength,
    required this.scrollController,
    required this.textController,
    required this.cubit,
  });

  List<ChatMessage> _msgs(InterviewState s) {
    if (s is InterviewLoaded) return s.messages;
    if (s is InterviewLoading) return s.messages;
    if (s is InterviewError) return s.messages;
    return [];
  }

  void _scroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: cs.surface,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => showDialog(
            context: context,
            builder: (c) => AlertDialog(
              title: const Text('Leave Interview?'),
              content: const Text('Your progress will be lost.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(c),
                  child: const Text('Stay'),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pop(c);
                    Navigator.pop(context);
                  },
                  child: const Text('Leave'),
                ),
              ],
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topic,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            BlocBuilder<InterviewCubit, InterviewState>(
              builder: (_, s) {
                final q = s is InterviewLoaded ? s.questionsAsked : 0;
                return Text(
                  'Question $q of $sessionLength • $difficulty',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: cs.onSurfaceVariant,
                  ),
                );
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(3),
          child: BlocBuilder<InterviewCubit, InterviewState>(
            builder: (_, s) {
              final p = s is InterviewLoaded
                  ? s.questionsAsked / s.sessionLength
                  : 0.0;
              return LinearProgressIndicator(
                value: p,
                backgroundColor: cs.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation(cs.primary),
                minHeight: 3,
              );
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<InterviewCubit, InterviewState>(
              listener: (ctx, s) {
                if (s is InterviewSessionComplete) {
                  Navigator.of(ctx).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => SummaryPage(session: s.session),
                    ),
                  );
                }
                if (s is InterviewError) {
                  ScaffoldMessenger.of(ctx).showSnackBar(
                    SnackBar(
                      content: Text(s.message),
                      backgroundColor: cs.error,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  );
                }
                _scroll();
              },
              builder: (_, s) {
                final msgs = _msgs(s);
                final loading = s is InterviewLoading;
                final fb = s is InterviewLoaded ? s.feedback : null;
                final showFb = fb != null && fb.type == 'feedback';
                final count =
                    msgs.length + (showFb ? 1 : 0) + (loading ? 1 : 0);

                return ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemCount: count,
                  itemBuilder: (_, i) {
                    if (i < msgs.length) {
                      final m = msgs[i];
                      return MessageBubble(
                        content: m.content,
                        isUser: m.role == 'user',
                        timestamp: m.timestamp,
                      );
                    }
                    if (showFb && i == msgs.length) {
                      return FeedbackCard(feedback: fb);
                    }
                    return const TypingIndicator();
                  },
                );
              },
            ),
          ),
          BlocBuilder<InterviewCubit, InterviewState>(
            builder: (_, s) {
              return ChatInputBar(
                controller: textController,
                isLoading: s is InterviewLoading,
                onSend: () {
                  final t = textController.text.trim();
                  if (t.isNotEmpty) {
                    cubit.sendMessage(t);
                    textController.clear();
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
