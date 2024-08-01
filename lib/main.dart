import 'package:exam_project/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AudiBooks());
}

class AudiBooks extends StatelessWidget {
  const AudiBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
