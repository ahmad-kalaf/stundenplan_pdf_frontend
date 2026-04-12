import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/dashboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Dashboard());
  }
}
