import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/core/widgets/header_widget.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(titel: "Profil", subtitel: "", showImage: false),
      body: Center(
        child: Text(
          'Hier kannst du dein Profil anpassen.',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
