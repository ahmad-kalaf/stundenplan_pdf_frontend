import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/widgets/header_widget.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderWidget(titel: 'Profil', subtitel: 'Passe deinen Profil an', showImage: false),
    );
  }
}
