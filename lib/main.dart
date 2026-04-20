import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/di/injection_container.dart' as di;
import 'features/interview/data/local/hive_chat_message.dart';
import 'features/interview/data/local/hive_interview_session.dart';
import 'features/interview/pages/setup_page.dart';

void main() async {
  // 1. Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Initialize Hive
  await Hive.initFlutter();

  // 3. Register Hive adapters BEFORE DI init
  Hive.registerAdapter(HiveChatMessageAdapter());
  Hive.registerAdapter(HiveInterviewSessionAdapter());

  // 4. Initialize dependency injection
  await di.init();

  // 5. Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Interview Coach',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF6C63FF),
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFF121218),
        appBarTheme: const AppBarTheme(centerTitle: false, elevation: 0),
      ),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF6C63FF),
        fontFamily: 'Roboto',
      ),
      home: const SetupPage(),
    );
  }
}
