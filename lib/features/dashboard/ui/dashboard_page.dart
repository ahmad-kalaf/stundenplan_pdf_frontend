import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/features/dashboard/ui/dashboard_desktop.dart';
import 'package:stundenplan_pdf_frontend/features/dashboard/ui/dashboard_mobile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 450;
    return isDesktop ? DashboardDesktop() : DashboardMobile();
  }
}
