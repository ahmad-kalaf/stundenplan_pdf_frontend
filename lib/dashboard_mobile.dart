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
      appBar: HeaderWidget(
        titel: "Hallo ahmad",
        subtitel: DateFormat('HH:mm dd.MM.yyyy').format(DateTime.now()),
        showImage: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              right: 10,
              bottom: 0,
              // 0 sorgt dafür, dass der Bereich bis hinter die three buttons bar geht
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: (MediaQuery.of(context).size.width * 0.03)
                            .clamp(15, 30),
                      ),
                      'Deine heutige Veranstaltungen:',
                    ),
                    // platz für heutige veranstaltungen, horizontal scrollbar
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
                    // platz für notizen
                    Container(
                      padding: EdgeInsetsGeometry.all(30),
                      margin: EdgeInsetsGeometry.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Hier kannst du deine Notizen hinzufügen',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (MediaQuery.of(context).size.width * 0.02)
                                .clamp(10, 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
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
