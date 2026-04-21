import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/app/app_routes.dart';
import 'package:stundenplan_pdf_frontend/features/dashboard/ui/dashboard_page.dart';
import 'package:stundenplan_pdf_frontend/features/profile/ui/profile_page.dart';

class AppRouter {

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.dashboard:
        return MaterialPageRoute(builder: (context) => const DashboardPage());
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(
                "Seite nicht gefunden",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
    }
  }
}
