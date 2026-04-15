import 'package:flutter/material.dart';

class EventDetailsCard extends StatelessWidget {
  const EventDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white24
        ),
        child: const SizedBox(
          width: 300,
          height: 200,
          child: Text('data', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
