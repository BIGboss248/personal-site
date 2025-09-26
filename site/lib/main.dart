// Entry point for Flutter Web resume site
import 'package:flutter/material.dart';
import 'pages/resume_page.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F8EF7), // Modern blue
          primary: const Color(0xFF4F8EF7),
          secondary: const Color(0xFF00C9A7), // Accent teal
          background: const Color(0xFFF5F7FA), // Light background
          surface: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onBackground: const Color(0xFF22223B),
          onSurface: const Color(0xFF22223B),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4F8EF7),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        chipTheme: const ChipThemeData(
          backgroundColor: Color(0xFF00C9A7),
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: const ResumePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
