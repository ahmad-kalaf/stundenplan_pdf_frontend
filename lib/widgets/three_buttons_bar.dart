import 'package:flutter/material.dart';

import 'horizontal_divider.dart';

class ThreeButtonsBar extends StatelessWidget {
  final IconButton firstButton;
  final IconButton secondButton;
  final IconButton thirdButton;
  const ThreeButtonsBar({super.key, required this.firstButton, required this.secondButton, required this.thirdButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(15),
      padding: EdgeInsetsGeometry.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(999),
        border: Border.all(color: Colors.blue),
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade500,
            Colors.grey.shade900,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white38,
            blurRadius: 20,
            offset: Offset(10, 10),
          ),
          BoxShadow(
            color: Colors.white38,
            blurRadius: 20,
            offset: Offset(-12, 12),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(child: firstButton),
          HorizontalDivider(height: 30),
          Flexible(child: secondButton),
          HorizontalDivider(height: 30),
          Flexible(child: thirdButton),
        ],
      ),
    );
  }
}
