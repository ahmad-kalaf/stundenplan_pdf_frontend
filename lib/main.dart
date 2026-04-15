import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/dashboard.dart';
import 'package:stundenplan_pdf_frontend/widgets/app_background.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      home: AppBackground(child: Dashboard()),
    );
  }
}
