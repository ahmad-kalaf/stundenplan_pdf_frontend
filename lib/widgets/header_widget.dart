import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/profile.dart';

class HeaderWidget extends StatelessWidget {
  final String titel;
  final String subtitel;
  final bool showImage;

  const HeaderWidget({
    super.key,
    required this.titel,
    required this.subtitel,
    required this.showImage,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double maxAppbarHeight = min((screenHeight * 0.13), 1500);
    double maxProfileImageRadius = min(maxAppbarHeight * 0.3, 40);
    return Container(
      width: double.infinity,
      height: maxAppbarHeight,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, Colors.grey.shade500, Colors.black],
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: showImage
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titel,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  subtitel,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          if (showImage) ...[
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              ),
              child: CircleAvatar(
                radius: maxProfileImageRadius,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/141134460?s=96&v=4",
                ),
                onForegroundImageError: (exception, stackTrace) {},
                child: Icon(Icons.person, color: Colors.black),
              ),
            ),
            SizedBox(width: 20),
          ],
        ],
      ),
    );
  }
}
