import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/dashboard_desktop.dart';
import 'package:stundenplan_pdf_frontend/dashboard_mobile.dart';
import 'package:stundenplan_pdf_frontend/widgets/app_background.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 450;
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent, bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.transparent)),
      home: AppBackground(
        child: isDesktop ? DashboardDesktop() : DashboardMobile(),
      ),
    );
  }
}
