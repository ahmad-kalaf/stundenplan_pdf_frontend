import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stundenplan_pdf_frontend/widgets/event_details_card.dart';
import 'package:stundenplan_pdf_frontend/widgets/header_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      EventDetailsCard(),
      EventDetailsCard(),
      EventDetailsCard(),
      EventDetailsCard(),
      EventDetailsCard(),
      EventDetailsCard(),
    ];
    PageController controller = PageController(viewportFraction: 0.8);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                titel: "Hallo ahmad",
                subtitel: DateFormat('HH:mm dd.MM.yyyy').format(DateTime.now()),
                showImage: true,
              ),
              SizedBox(
                height: 300,
                child: PageView.builder(
                  itemCount: items.length,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return items[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
