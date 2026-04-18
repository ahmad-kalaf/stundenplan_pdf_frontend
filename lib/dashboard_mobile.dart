import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stundenplan_pdf_frontend/widgets/event_details_card.dart';
import 'package:stundenplan_pdf_frontend/widgets/header_widget.dart';
import 'package:stundenplan_pdf_frontend/widgets/three_buttons_bar.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeaderWidget(
                    titel: "Hallo ahmad",
                    subtitel: DateFormat(
                      'HH:mm dd.MM.yyyy',
                    ).format(DateTime.now()),
                    showImage: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: (MediaQuery.of(context).size.width * 0.03)
                            .clamp(15, 30),
                      ),
                      'Deine heutige Veranstaltungen:',
                    ),
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
            Positioned(
              left: 10,
              bottom: 10,
              right: 10,
              child: ThreeButtonsBar(
                firstButton: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.add),
                ),
                secondButton: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.calendar_month_rounded),
                ),
                thirdButton: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.view_list_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
