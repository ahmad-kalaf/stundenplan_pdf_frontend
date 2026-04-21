import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/app/app_router.dart';
import 'package:stundenplan_pdf_frontend/app/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      builder: (context, child) {
        return Stack(
          children: [
            Container(color: Colors.black),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(0, -0.6),
                  radius: 0.9,
                  colors: [
                    Colors.blue.shade900,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(0, 0.6),
                  radius: 0.9,
                  colors: [
                    Colors.blue.shade900,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            child ?? const SizedBox.shrink(),
          ],
        );
      },
      initialRoute: AppRoutes.dashboard,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
