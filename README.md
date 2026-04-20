# AI Interview Coach

AI-powered technical interview practice app built with Flutter. Uses Google Gemini to simulate realistic interview sessions with real-time feedback.

## Features

- **Multiple Topics**: Flutter/Dart, DSA & Algorithms, System Design, Behavioral
- **Difficulty Levels**: Junior, Mid-level, Senior
- **Configurable Sessions**: 5, 10, or 15 questions per session
- **Real-time AI Feedback**: Score, strengths, gaps, and model answers
- **Session History**: Local persistence via Hive
- **Clean Architecture**: BLoC/Cubit + Repository pattern

## Architecture

```
lib/
├── core/           # DI, networking, error handling, utilities
├── features/
│   └── interview/
│       ├── bloc/       # Cubit + States
│       ├── data/       # Models, datasources, repository impl
│       ├── domain/     # Entities, repository interface, use cases
│       ├── pages/      # Setup, Interview, Summary
│       └── widgets/    # MessageBubble, TypingIndicator, etc.
└── main.dart
```

## Setup

### 1. Install dependencies

```bash
flutter pub get
```

### 2. Generate code (freezed + hive)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Run with API key

```bash
flutter run --dart-define=GEMINI_API_KEY=YOUR_KEY_HERE
```

> **Note**: Get your API key from [Google AI Studio](https://aistudio.google.com/apikey). Never hardcode it in source files.

## Tech Stack

- **State Management**: flutter_bloc (Cubit pattern)
- **HTTP**: Dio with PrettyDioLogger
- **API Models**: Freezed + json_serializable
- **Local Storage**: Hive (plain classes, no freezed)
- **DI**: get_it
- **Widgets**: HookWidget (flutter_hooks)
