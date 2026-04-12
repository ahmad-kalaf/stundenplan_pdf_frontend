import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stundenplan_pdf_frontend/widgets/header_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(titel: "Hallo ahmad", subtitel: DateFormat('HH:mm dd.MM.yyyy').format(DateTime.now()), showImage: true,)
          ],
        ),
      ),
    );
  }
}
